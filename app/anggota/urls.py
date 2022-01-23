
from django.contrib import admin
from django.urls import path, include
from . import views


urlpatterns = [
    path("grafik", views.grafil_anggota, name="grafik-anggota"),
    path("<status>/", views.data_anggota, name="data-anggota")

]
