from django.shortcuts import render
from django.shortcuts import HttpResponse
from django.views.decorators.csrf import csrf_exempt
import json
from . import models
from django import forms


class OrderForm(forms.ModelForm):
    class Meta:
        model = models.Order
        fields = ['type', 'price', 'guest', 'phone', 'address']

    def clean_type(self):
        atype = self.data['type']
        aguest = self.data['guest']
        aphone = self.data['phone']
        aaddress = self.data['address']
        if (atype == '配送' and aguest and aphone and aaddress) or atype == '打包' or atype == '堂吃':
            return atype
        else:
            raise forms.ValidationError('订单非法', code='incomplete delivery information')


@csrf_exempt
def ordering(request):
    if request.method == 'POST':
        order = json.loads(request.body.decode('utf-8'))
        order_form_json = {}
        for field in OrderForm.Meta.fields:
            if field not in order.keys():
                return HttpResponse('{"status": "failure", "msg": "订单不完整"}', content_type='application/json')
            else:
                order_form_json[field] = order[field]
        if 'foods' not in order.keys() or 'remarks' not in order.keys() or len(order['foods']) != len(order['remarks']):
            return HttpResponse('{"status": "failure", "msg": "订单不完整"}', content_type='application/json')
        else:
            foods_ids = [food.id for food in models.Food.objects.all()]
            for food in order['foods']:
                if food not in foods_ids:
                    return HttpResponse('{"status": "failure", "msg": "非法订单菜品"}', content_type='application/json')
        order_form = OrderForm(order_form_json)
        if order_form.is_valid():
            order_form.save(commit=True)
            detail_list = []

            return HttpResponse('{"status": "success"}', content_type='application/json')
        else:
            return HttpResponse('{"status": "failure", "msg": "订单非法"}', content_type='application/json')
