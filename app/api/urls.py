
from django.contrib import admin
from django.urls import path, include
from api.berita.views import NewsApiView, AllNewsView
from api.jadwal.views import JadwalApiView

urlpatterns = [
    path('top-news/', NewsApiView.as_view(), name="top_news"),
    path("list-jadwal/", JadwalApiView.as_view(), name="list-jadwal"),
    path("all-news/", AllNewsView.as_view(), name="all-news")
]

