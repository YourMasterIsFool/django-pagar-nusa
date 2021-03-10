from django.db import models


from PIL import Image
import os.path
from io import BytesIO
from django.core.files.base import ContentFile

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

        thumb_filename = thumb_name + '_thumb' + thumb_extension

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