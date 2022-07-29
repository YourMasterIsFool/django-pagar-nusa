from django.contrib import admin
from anggota.models import Anggota
# Register your models here.

from django.utils.translation import gettext as _
from django.utils.html import format_html
class AnggotaBase(admin.ModelAdmin):
	pass


class AnggotaValidasi(Anggota):
	class Meta:
		proxy = True
		verbose_name=_("Validasi")
		verbose_name_plural = _("Validasi")


class AnggotaValidasiAdmin(AnggotaBase):
	list_display = ('nama','get_validation',);
	def get_validation(self, obj):

		if(obj.validate):
			return format_html(""" 
				<span style='padding: 10px 16px; background-color:green; border-radius: 20px; color: white; font-size:12px'>
					Tervalidasi
				</span>
			""")

		return format_html("""
			<span style='padding: 10px 16px; background-color:red; border-radius: 20px; color: white; font-size:12px'>
					Belum Tervalidasi
				</span>
		 """)


	get_validation.short_description = 'validasi'

	# def get_queryset(self, request):

	# 	return self.model.objects.all()




 

admin.site.register(AnggotaValidasi, AnggotaValidasiAdmin)