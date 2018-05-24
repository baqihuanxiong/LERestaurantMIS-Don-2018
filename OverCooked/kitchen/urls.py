from django.conf.urls import url
from . import views


urlpatterns = [
    url(r'^distribution/$', views.distribution, name='distribution')
]
