
from django.contrib import admin
from django.urls import path, include
from . import views


urlpatterns = [
    path("", views.dhashboard, name="dashboard"),
    path("c-berita/", views.c_berita, name="c_berita")
]

