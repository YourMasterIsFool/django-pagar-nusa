from django.db import models

# Create your models here.

class Anggota(models.Model):
    STATUS = [
        (u'anggota', u'anggota'),
        (u'pengurus', u'pengurus'),
    ]
    profile_pic = models.ImageField(upload_to='profile_pic', default="profile_pic/default.jpeg")
    nama = models.CharField(max_length=100)
    alamat = models.CharField(max_length=100)
    no_hp = models.CharField(max_length=100)
    status = models.CharField(choices=STATUS, max_length=40)
    jabatan = models.CharField(max_length=100, default="~", blank=True)
    def __str__(self):
        return self.nama


        