from django.contrib import admin
from anggota.models import Anggota
# Register your models here.


            
class AnggotaAdmin(admin.ModelAdmin):
    list_display = [ 'avatar', 'nama', 'alamat', 'no_hp','jabatan', 'status', 'validate', 'tingkat', 'status_verify']
    def get_queryset(self, request):
        qs = super(AnggotaAdmin, self).get_queryset(request)
        print(qs)        
        return qs.filter(nama="test")
        # if request.user.is_superuser:
        #     return qs
        # return qs.filter(author=request.user)
    
    class Meta:
        model = Anggota

admin.site.register(Anggota, AnggotaAdmin)
