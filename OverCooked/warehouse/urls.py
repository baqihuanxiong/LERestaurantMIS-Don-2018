from django.conf.urls import url
from . import views


urlpatterns = [
    url(r'^entry/$', views.entry, name='entry'),
    url(r'^inventory/$', views.inventory, name='inventory'),
    url(r'^scrap/$', views.scrap, name='scrap'),
    url(r'^query/$', views.query, name='query'),
]
