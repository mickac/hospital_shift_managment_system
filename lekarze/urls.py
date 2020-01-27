from django.contrib import admin
from django.urls import include, path
from django.conf.urls import url
from django.contrib.auth import views as auth_views
from django.views.generic.base import TemplateView

from . import views

app_name='lekarze'
urlpatterns = [
    path('staffadd', views.staff_add, name='staffadd'),
    path('stafflist', views.staff_list, name='stafflist'),
    path('countryadd', views.country_add, name='countryadd'),
    path('cityadd', views.city_add, name='cityadd'),
    path('<int:pk>/staffdelete', views.staff_delete, name='staffdelete'),
    path('hospitaladd', views.hospital_add, name='hospitaladd'),
    path('hospitallist', views.hospital_list, name='hospitallist'),
    path('<int:pk>/hospitaldelete', views.hospital_delete, name='hospitaldelete'),
    path('departmentadd', views.department_add, name='departmentadd'),
    path('departmentlist', views.department_list, name='departmentlist'),
    path('<int:pk>/departmentdelete', views.department_delete, name='departmentdelete'),
    path('shiftcalendar', views.shift_calendar, name='shiftcalendar'),
    path('shiftlist', views.shift_list, name='shiftlist'),
    path('<int:pk>/shiftadd', views.shift_add, name='shiftadd'),
    path('exchangepage', views.exchange_page, name='exchangepage'),
    path('exchangelist', views.exchange_list, name='exchangelist'),
    path('<int:pk>/exchangeadd', views.exchange_add, name='exchangeadd'),
    path('exchangeadding', views.exchange_adding, name='exchangeadding'),
    path('exchangemyproposes', views.exchange_myproposes, name='exchangemyproposes'),
    path('exchangeyourproposes', views.exchange_yourproposes, name='exchangeyourproposes'),
]