from django.shortcuts import render
from django.shortcuts import HttpResponse
from django.views.decorators.csrf import csrf_exempt
import json
from . import models


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
            detail_list = [models.Detail(order=order_obj, food=models.Food.objects.get(id=order['foods'][i]),
                                         mark=order['marks'][i], state='未分配') for i in range(len(order['foods']))]
            models.Detail.objects.bulk_create(detail_list)
            return HttpResponse('{"status": "success"}', content_type='application/json')
        else:
            return HttpResponse('{"status": "failure", "msg": "invalid order"}', content_type='application/json')
    elif request.method == 'GET':
        return render(request, 'ordering.html')
