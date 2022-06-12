from django.contrib import admin
from anggota.models import Anggota
from anggota.models import UjianKenaikanTingkat
from django.utils.html import format_html
# Register your models here.


            
@admin.register(Anggota)
class AnggotaAdmin(admin.ModelAdmin):
    list_display = [ 'avatar', 'nama', 'alamat', 'no_hp','jabatan', 'status', 'tingkat', 'validate']

@admin.register(UjianKenaikanTingkat)
class UKTAdminView(admin.ModelAdmin):
    list_display = ['photo', 'nama', 'alamat',
        'unit_latihan','tingkat', 'hasil'
    ]

    def photo(self, obj):
        return format_html(f'<img src="{obj.anggota.profile_pic.url}" width="100" height="100">')

    def nama(self, obj):
        return obj.anggota.nama
    
    def alamat(self, obj):
        return obj.anggota.alamat
    
    