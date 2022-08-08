from django.contrib import admin
from anggota.models import Anggota
from anggota.models import UjianKenaikanTingkat
from django.utils.html import format_html
# Register your models here.


            
@admin.register(Anggota)
class AnggotaAdmin(admin.ModelAdmin):
    list_display = [ 'avatar', 'nama', 'alamat', 'no_hp','jabatan', 'status',  'tingkat', 'get_verifikasi']
    exclude = ('validate','status_verify','verifikasi')

    def get_verifikasi(self, obj):

        if(obj.verifikasi):
            return format_html(""" 
                <span style='padding: 10px 16px; background-color:green; border-radius: 20px; color: white; font-size:12px'>
                    Terverifikasi
                </span>
            """)

        return format_html("""
            <span style='padding: 10px 16px; background-color:red; border-radius: 20px; color: white; font-size:12px'>
                    Belum Terverifikasi
                </span>
         """)


    get_verifikasi.short_description = 'Verifikasi Anggota'



    def get_queryset(self, request):
        qs = super(AnggotaAdmin, self).get_queryset(request)
        print(qs)        
        # return qs.filter(nama="test")
        if request.user.is_superuser:
            return qs
        return qs.filter(author=request.user)
    
    class Meta:
        model = Anggota

@admin.register(UjianKenaikanTingkat)
class UKTAdminView(admin.ModelAdmin):
    list_display = ['photo', 'nama', 'alamat',
        'unit_latihan','tingkat', 'hasil', 'tanggal_ujian'
    ]

    def photo(self, obj):
        return format_html(f'<img src="{obj.anggota.profile_pic.url}" width="100" height="100">')

    def nama(self, obj):
        return obj.anggota.nama
    
    def alamat(self, obj):
        return obj.anggota.alamat
    
    
