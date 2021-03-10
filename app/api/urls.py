
from django.contrib import admin
from django.urls import path, include
from api.berita.views import NewsApiView, AllNewsView, TambahBeritaApiView, DeleteNewsApiView
from api.jadwal.views import JadwalApiView
from api.auth.views import LoginApiView, RegisterApiView, ListUserApiView
from api.gallery.views import PostGalleryImageApiView
from api.anggota.views import PostAnggotaApiView, ListAnggotaApiView, EditAngotaApiview, DeleteAnggotaApiView

urlpatterns = [
    # auth
    path("register/", RegisterApiView.as_view(), name="register"),
    path("login/", LoginApiView.as_view(), name="login"),
    path("list-user/", ListUserApiView.as_view(), name="list-user"),
    
    # news
    path("post-news/", TambahBeritaApiView.as_view(), name="post-news"),
    path("delete-news/<pk>/", DeleteNewsApiView.as_view(), name="delete-news"),
    path('top-news/', NewsApiView.as_view(), name="top_news"),
    path("list-jadwal/", JadwalApiView.as_view(), name="list-jadwal"),
    path("all-news/", AllNewsView.as_view(), name="all-news"),
    
    # galery
    path("post-photo-gallery/", PostGalleryImageApiView.as_view(), name="post-photo"),

    # anggota
    path("list-anggota/", ListAnggotaApiView.as_view(), name="list-anggota"),
    path("add-anggota/", PostAnggotaApiView.as_view(), name="post-anggota"),
    path("edit-anggota/<pk>/", EditAngotaApiview.as_view(), name="edit-anggota"),
    path("delete-anggota/<pk>/", DeleteAnggotaApiView.as_view(), name="delete-anggota"),

]


