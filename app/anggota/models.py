from datetime import datetime
from email.policy import default
import venv
from django.db import models


from PIL import Image
import os.path
from io import BytesIO
from django.core.files.base import ContentFile
from django.utils.translation import gettext as _
from django.utils.html import format_html
from django.contrib.auth.models import User

# Create your models here.
TINGKAT = [
    ('polos', 'polos'),
    ('putih', 'putih'),
    ('kuning', 'kuning'),
    ('merah', 'merah'),
    ('biru', 'biru'),
    ('coklat', 'coklat'),

]



# anggota
class Anggota(models.Model):
    STATUS = [
        (u'anggota', u'anggota'),
        (u'pengurus', u'pengurus'),
    ]

    STATUS_VERIFY = [
        ('verify', 'verify'),
        ('unverify', 'unverify'),
    ]



    identity_pic = models.ImageField(upload_to='identity_pic', null=True, verbose_name=_("Foto KTP/KK"))
    profile_pic = models.ImageField(upload_to='profile_pic', default="profile_pic/default.jpeg", verbose_name="Foto Diri")
    nama = models.CharField(max_length=100)
    alamat = models.CharField(max_length=100)
    no_hp = models.CharField(max_length=100)
    status = models.CharField(choices=STATUS, max_length=40)
    jabatan = models.CharField(max_length=100, default="~", blank=True)
    cabang = models.CharField(_("Cabang"), max_length=100)
    pac = models.CharField(_("PAC"), max_length=100)
    ranting = models.CharField(_("Ranting"), max_length=100)
    sertifikat = models.FileField(upload_to='sertifikat/', blank=True, null=True)
    validate = models.BooleanField(_("Validasi"), default=False)
    tingkat = models.CharField(_("Tingkat"), choices=TINGKAT, max_length=50)
    status_verify = models.CharField(_("Sattus Verifikasi"), choices=STATUS_VERIFY, max_length=50)
    verifikasi = models.BooleanField(_("Verifikasi"), default=False)
    author = models.ForeignKey(User, on_delete=models.CASCADE, null=True)
    class Meta:
        abstract = True

    def __str__(self):
        return self.nama

    def avatar(self):
        return format_html(f'<img src="{self.profile_pic.url}" width="100" height="100">')
    
    def save(self):
        self.make_thumbnail()
        super(Anggota, self).save()

    def make_thumbnail(self):
        image = Image.open(self.profile_pic)
        new_h = 300
        new_w = image.width*new_h/image.height

        image.thumbnail((new_w, new_h), Image.ANTIALIAS)
        thumb_name, thumb_extension = os.path.splitext(self.profile_pic.name)
        thumb_extension = thumb_extension.lower()

        thumb_filename = f'{thumb_name}_thumb{thumb_extension}'

        if thumb_extension in ['.jpg', '.jpeg']:
            FTYPE = 'JPEG'
        elif thumb_extension == '.gif':
            FTYPE = 'GIF'
        elif thumb_extension == '.png':
            FTYPE = 'PNG'
        else:
            return False    # Unrecognized file type

        # Save thumbnail to in-memory file as StringIO
        temp_thumb = BytesIO()
        image.save(temp_thumb, FTYPE)
        temp_thumb.seek(0)

        # set save=False, otherwise it will run in an infinite loop
        self.profile_pic.save(thumb_filename, ContentFile(temp_thumb.read()), save=False)
        temp_thumb.close()

        return True

    
    class Meta:
        verbose_name=_("Anggota")
        verbose_name_plural = _("Anggota")

class UjianKenaikanTingkat(models.Model):
    HASIL = [('Lulus', 'Lulus'), ('Tidak Lulus', 'Tidak Lulus')]
    anggota = models.ForeignKey(Anggota, verbose_name=_("Anggota"), on_delete=models.CASCADE)
    unit_latihan = models.CharField(_("Unit Latihan"), max_length=50)
    tingkat = models.CharField(_("Tingkat"), max_length=50, choices=TINGKAT)
    hasil = models.CharField(_("Hasil"), max_length=50)
    tanggal_ujian  = models.DateField(_("Tanggal Ujian"), null=False, default=datetime.now().today)
    class Meta:
        verbose_name=_("Ujian Kenaikan Tingkat")
        verbose_name_plural = _("Ujian Kenaikan Tingkat")

    def __str__(self) -> str:
        return self.anggota.nama

    def save(self):
        super().save()
        if self.hasil == 'Lulus':
            anggota = Anggota.objects.get(id=self.anggota.id)
            anggota.tingkat = self.tingkat
            anggota.save()

    