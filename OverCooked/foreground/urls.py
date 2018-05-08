from django.conf.urls import url
from . import views


urlpatterns = [
    url(r'^ordering/$', views.ordering, name='ordering')
]
