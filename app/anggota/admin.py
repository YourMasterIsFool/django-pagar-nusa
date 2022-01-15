from django.contrib import admin
from anggota.models import Anggota
from anggota.models import Tingkat
# Register your models here.


class TingkatAdmin(admin.ModelAdmin):
    class Meta:
        list_display = ['name', ]
        class Meta:
            model = Tingkat
            
class AnggotaAdmin(admin.ModelAdmin):
    list_display = [ 'avatar', 'nama', 'alamat', 'no_hp','jabatan', 'status', 'validate', 'tingkat', 'status_verify']
    class Meta:
        model = Anggota

admin.site.register(Anggota, AnggotaAdmin)
admin.site.register(Tingkat, TingkatAdmin)