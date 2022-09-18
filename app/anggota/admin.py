from secrets import choice
from django.contrib import admin
from anggota.models import Anggota
from anggota.models import UjianKenaikanTingkat
from anggota.models import CertificateImage

from django.utils.html import format_html
# Register your models here.
from django import forms

from import_export.admin import ExportMixin, ImportExportModelAdmin
from import_export import resources


from anggota.models import TINGKAT

from import_export.formats import base_formats

# Register your models here.


class FontSelect(forms.Select):
    def __init__(self, *args, **kwargs):
        self.src = kwargs.pop('src', {})
        super().__init__(*args, **kwargs)

    def create_option(self, name, value, label, selected, index, subindex=None, attrs=None):
        option = super(FontSelect, self).create_option(
            name, value, label, selected, index, subindex=None, attrs=None)

        if option['value'] == 'polos':
            option['attrs']['style'] = "background-color:transparent; color:black !important;"

        elif option['value'] == 'putih':
            option['attrs']['style'] = "background-color:white"

        elif option['value'] == 'kuning':
            option['attrs']['style'] = "background-color:yellow; color: white !important;"

        elif option['value'] == 'merah':
            option['attrs']['style'] = "background-color:red"

        return option


class AnggotaForm(forms.ModelForm):
    class Meta:
        model = Anggota
        fields = "__all__"

        widgets = {
            'tingkat': FontSelect
        }
    # def __init__(self, *args, **kwargs):
    #     src = kwargs.pop('src', {})
    #     choices = kwargs.pop('src', {})
    #     super(AnggotaForm, self).__init__(*args, **kwargs)

    #     self.fields['tingkat'].widget = FontSelect(
    #         attrs={'class': 'some-class'}, choices=choices, src=src)


class AnggotaResource(resources.ModelResource):
    class Meta:
        model = Anggota
        exclude = ('imported',)
        fields = ['avatar', 'nama', 'alamat', 'no_hp',
                  'jabatan', 'status',  'tingkat', 'get_verifikasi']


class CertificateAdmin(admin.StackedInline):
    model = CertificateImage
    exclude = ('tingkat',)


class AnggotaAdmin(ExportMixin, admin.ModelAdmin):
    list_display = ['avatar', 'nama', 'alamat', 'no_hp',
                    'jabatan', 'status',  'tingkat', 'get_verifikasi', 'active_status', 'get_nomor_anggota']
    exclude = ('validate', 'status_verify',
               'author', 'verifikasi', 'sertifikat')

    list_filter = ['nama', 'alamat', 'no_hp',
                   'jabatan', 'status',  'tingkat', 'verifikasi']
    inlines = [CertificateAdmin]
    form = AnggotaForm

    def get_export_formats(self):
        formats = (
             base_formats.HTML,
             base_formats.XLS,
             base_formats.XLSX,
        )

        return [f for f in formats if f().can_export()]

    def get_verifikasi(self, obj):

        if (obj.verifikasi):
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

    def get_nomor_anggota(self, obj):
        return format(f"""
            {obj.nomor_anggota}
        """)

    get_nomor_anggota.short_description = "Nomor Anggota(NIA)"

    def get_queryset(self, request):
        qs = super(AnggotaAdmin, self).get_queryset(request)
        print(qs)
        # return qs.filter(nama="test")
        if request.user.is_superuser:
            return qs
        return qs.filter(author=request.user)

    def save_model(self, request, obj, form, change):
        if getattr(obj, 'author', None) is None:
            obj.author = request.user

        if (request.user.is_superuser):
            obj.verifikasi = True
        obj.save()

    resource_class = AnggotaResource


admin.site.register(Anggota, AnggotaAdmin)


# @admin.register(Anggota)
# class AnggotaAdmin(admin.ModelAdmin):
#     list_display = ['avatar', 'nama', 'alamat', 'no_hp',
#                     'jabatan', 'status',  'tingkat', 'get_verifikasi']
#     exclude = ('validate', 'status_verify', 'author', 'verifikasi')

#     def get_verifikasi(self, obj):

#         if (obj.verifikasi):
#             return format_html("""
#                 <span style='padding: 10px 16px; background-color:green; border-radius: 20px; color: white; font-size:12px'>
#                     Terverifikasi
#                 </span>
#             """)

#         return format_html("""
#             <span style='padding: 10px 16px; background-color:red; border-radius: 20px; color: white; font-size:12px'>
#                     Belum Terverifikasi
#                 </span>
#          """)

#     get_verifikasi.short_description = 'Verifikasi Anggota'

#     def get_queryset(self, request):
#         qs = super(AnggotaAdmin, self).get_queryset(request)
#         print(qs)
#         # return qs.filter(nama="test")
#         if request.user.is_superuser:
#             return qs
#         return qs.filter(author=request.user)

#     def save_model(self, request, obj, form, change):
#         if getattr(obj, 'author', None) is None:
#             obj.author = request.user

#         if (request.user.is_superuser):
#             obj.verifikasi = True
#         obj.save()

#     class Meta:
#         model = Anggota


class UKTResources(resources.ModelResource):

    class Meta:
        model = UjianKenaikanTingkat
        fields = ['anggota__nama', 'anggota__alamat',
                  'unit_latihan', 'tingkat', 'hasil', 'tanggal_ujian'
                  ]

        def photo(self, obj):
            return format_html(f'<img src="{obj.anggota.profile_pic.url}" width="100" height="100">')

        def nama(self, obj):
            return obj.anggota.nama

        def alamat(self, obj):
            return obj.anggota.alamat


class UKTAdmin(ExportMixin, admin.ModelAdmin):
    list_display = ['photo', 'nama', 'alamat',
                    'unit_latihan', 'tingkat', 'hasil', 'tanggal_ujian'
                    ]

    list_filter = ['anggota__nama', 'anggota__alamat',
                   'unit_latihan', 'tingkat', 'hasil', 'tanggal_ujian'
                   ]

    def get_export_formats(self):
        formats = (
             base_formats.HTML,
             base_formats.XLS,
             base_formats.XLSX,
        )

        return [f for f in formats if f().can_export()]
                       
    def photo(self, obj):
        return format_html(f'<img src="{obj.anggota.profile_pic.url}" width="100" height="100">')

    def nama(self, obj):
        return obj.anggota.nama

    def alamat(self, obj):
        return obj.anggota.alamat

    resource_class = UKTResources

    # @admin.register(UjianKenaikanTingkat)
    # class UKTAdminView(admin.ModelAdmin):
    #     list_display = ['photo', 'nama', 'alamat',
    #                     'unit_latihan', 'tingkat', 'hasil', 'tanggal_ujian'
    #                     ]

    #     def photo(self, obj):
    #         return format_html(f'<img src="{obj.anggota.profile_pic.url}" width="100" height="100">')

    #     def nama(self, obj):
    #         return obj.anggota.nama

    #     def alamat(self, obj):
    #         return obj.anggota.alamat


admin.site.register(UjianKenaikanTingkat, UKTAdmin)
