
from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static


urlpatterns = [
    path('login/', admin.site.urls),
    path("", include('berita.urls'), name="home"),
    path("galery/", include('galery.urls')),
    path('ckeditor/', include('ckeditor_uploader.urls')),     
    path("api/", include('api.urls'), name="api"),
    path("jadwal", include('jadwal.urls')),
    path("database/", include('anggota.urls'))
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)