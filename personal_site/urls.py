from django.contrib import admin
from django.urls import path
from homepage.views import vue_home

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', vue_home, name='vue_home'),
]
