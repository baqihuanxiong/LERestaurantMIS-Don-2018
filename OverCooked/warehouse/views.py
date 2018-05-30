from django.shortcuts import render
from django.shortcuts import HttpResponse
from django.shortcuts import HttpResponseRedirect
from django.views.decorators.csrf import csrf_exempt
import json
from . import models
from personnel.models import Employee


@csrf_exempt
def entry(request):
    if request.method == 'GET':
        context = {'storage': {stor_obj.material.name: {'id': stor_obj.material.id, 'num': stor_obj.num}
                               for stor_obj in models.Storage.objects.all()}}
        return render(request, 'entry.html', context)
    elif request.method == 'POST':
        content = json.loads(request.body.decode('utf-8'))
        entry_obj = models.Entry.objects.create(person=Employee.objects.get(account_id=request.user.id))
        for key, val in content.items():
            stora_obj = models.Storage.objects.get(material__name=key)
            stora_obj.num -= int(val)
            stora_obj.save()
            models.EntryDetail.objects.create(entry=entry_obj, material=models.Material.objects.get(name=key), num=int(val))
        return HttpResponse(str({"status": "success"}).replace("'", '"'), content_type='application/json')


@csrf_exempt
def inventory(request):
    if request.method == 'GET':
        context = {'storage': [{'id': stor_obj.id, 'name': stor_obj.material.name, 'num': stor_obj.num, 'date': str(stor_obj.date),
                                'gd': str(models.Material.objects.get(id=stor_obj.material_id).gd), 'material_id': stor_obj.material_id,
                                'md': str(stor_obj.md)} for stor_obj in models.Storage.objects.all()]}
        return render(request, 'inventory.html', context)
    elif request.method == 'POST':
        content = json.loads(request.body.decode('utf-8'))
        for storage_id, count in content.items():
            stora_obj = models.Storage.objects.get(id=storage_id)
            stora_obj.num = count
            stora_obj.save()
        return HttpResponse(str({"status": "success"}).replace("'", '"'), content_type='application/json')


@csrf_exempt
def scrap(request):
    if request.method == 'POST':
        stor_id = request.POST['stor_id']
        scrap_num = request.POST['scrap_num']
        reason = request.POST['reason']
        models.Junk.objects.create(storage_id=int(stor_id), num=int(scrap_num), reason=reason)
        stora_obj = models.Storage.objects.get(id=int(stor_id))
        stora_obj.num -= int(scrap_num)
        stora_obj.save()
        return HttpResponseRedirect('/warehouse/inventory/')


def query(request):
    if request.method == 'GET':
        context = {'storage': [
            {'id': stor_obj.id, 'name': stor_obj.material.name, 'num': stor_obj.num, 'date': str(stor_obj.date),
             'gd': str(models.Material.objects.get(id=stor_obj.material_id).gd), 'material_id': stor_obj.material_id,
             'md': str(stor_obj.md)} for stor_obj in models.Storage.objects.all()],
            'entry': [{'id': entry_obj.id, 'date': str(entry_obj.date), 'person': entry_obj.person.name,
                       'materials': ' '.join([ed.material.name + '*' + str(ed.num)
                                              for ed in models.EntryDetail.objects.filter(entry=entry_obj)])}
                      for entry_obj in models.Entry.objects.all()],
            'delivery': [{'id': delivery_obj.id, 'date': str(delivery_obj.date), 'person': delivery_obj.person.name,
                          'materials': ' '.join([dd.material.name + '*' + str(dd.num)
                                                for dd in models.DeliveryDetail.objects.filter(delivery=delivery_obj)])}
                         for delivery_obj in models.Delivery.objects.all()]
        }
        return render(request, 'query.html', context)
