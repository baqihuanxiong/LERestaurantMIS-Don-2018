from django.shortcuts import render
from foreground.models import Food


def distribution(request):
    if request.method == 'GET':
        return render(request, 'distribution.html')


def prepare(request):
    if request.method == 'GET':
        food_qs = Food.objects.filter(available=True)
        context = dict()
        context['foods'] = [{'id': food.id, 'name': food.name} for food in food_qs]
        return render(request, 'prepare.html', context)

