
from django.contrib import admin
from django.urls import path, include
from api.berita.views import NewsApiView, AllNewsView, TambahBeritaApiView
from api.jadwal.views import JadwalApiView
from api.auth.views import LoginApiView, RegisterApiView

urlpatterns = [
    # auth
    path("register/", RegisterApiView.as_view(), name="register"),
    path("login/", LoginApiView.as_view(), name="login"),


    path('top-news/', NewsApiView.as_view(), name="top_news"),
    path("list-jadwal/", JadwalApiView.as_view(), name="list-jadwal"),
    path("all-news/", AllNewsView.as_view(), name="all-news"),
    path("add-news/", TambahBeritaApiView.as_view(), name="add-news")   
]

