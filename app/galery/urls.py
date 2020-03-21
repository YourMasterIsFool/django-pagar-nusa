
from django.contrib import admin
from django.urls import path, include
from . import views


urlpatterns = [
    path("", views.galery_index, name="index-galery"),
    path("video/", views.galery_video, name="video-galery")

]
