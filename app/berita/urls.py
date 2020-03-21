
from django.contrib import admin
from django.urls import path, include
from . import views

urlpatterns = [
    path("", views.index, name="index"),
    path("detail/<slug>/", views.detail, name="detail"),
    path("search/", views.search, name="search")    
]
