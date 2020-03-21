
from django.contrib import admin
from django.urls import path, include
from . import views


urlpatterns = [
    path("<status>/", views.data_anggota, name="data-anggota")
]
