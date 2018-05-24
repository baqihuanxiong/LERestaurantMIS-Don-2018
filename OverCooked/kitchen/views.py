from django.shortcuts import render


def distribution(request):
    if request.method == 'GET':
        return render(request, 'distribution.html')

