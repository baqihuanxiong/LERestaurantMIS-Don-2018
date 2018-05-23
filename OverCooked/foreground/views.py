from django.shortcuts import render
from django.shortcuts import HttpResponse
from django.views.decorators.csrf import csrf_exempt
import json
from . import models
from kitchen.models import Prepare
from kitchen.gadistribute import GA


def check_order(order):
    fields = ['type', 'price', 'foods', 'marks', 'guest', 'phone', 'address']
    for field in fields:
        if field not in order.keys():
            return False
    if order['type'] == '配送' and not (order['guest'] and order['phone'] and order['address']):
        return False
    foods_ids = [food.id for food in models.Food.objects.all()]
    for food in order['foods']:
        if food not in foods_ids:
            return False
        if not models.Food.objects.get(id=food).available:
            return False
    if len(order['foods']) == 0 or len(order['foods']) != len(order['marks']):
        return False
    return True


@csrf_exempt
def ordering(request):
    if request.method == 'POST':
        order = json.loads(request.body.decode('utf-8'))
        if check_order(order):
            order_obj = models.Order.objects.create(type=order['type'], price=order['price'], guest=order['guest'],
                                                    phone=order['phone'], address=order['address'])
            detail_list = []
            for i in range(len(order['foods'])):
                food_state = '未分配'
                try:
                    prepare_obj = Prepare.objects.get(food_id=order['foods'][i])
                    if prepare_obj.num > 0:
                        food_state = '已完成'
                except Exception:
                    pass
                detail_list.append(models.Detail(order=order_obj, food=models.Food.objects.get(id=order['foods'][i]),
                                                 mark=order['marks'][i], state=food_state))
            models.Detail.objects.bulk_create(detail_list)
            GA().calculate()
            return HttpResponse('{"status": "success"}', content_type='application/json')
        else:
            return HttpResponse('{"status": "failure", "msg": "invalid order"}', content_type='application/json')
    elif request.method == 'GET':
        context = dict()
        context['menu'] = {ft_obj.name: [{'name': fo_obj.name, 'price': fo_obj.price, 'describe': fo_obj.describe}
                                         for fo_obj in models.Food.objects.filter(type=ft_obj.id, available=1)]
                           for ft_obj in models.FoodType.objects.all()}
        return render(request, 'ordering.html', context)
