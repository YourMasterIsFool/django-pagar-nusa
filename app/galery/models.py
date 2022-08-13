from django.db import models

from PIL import Image as im
import os.path
from io import BytesIO
from django.core.files.base import ContentFile
from django.utils.translation import gettext as _
# Create your models here.
class Image(models.Model):
    title = models.CharField(max_length=120, verbose_name=_("Judul"))
    image = models.ImageField(upload_to='gallery', verbose_name=_("gambar"))

        
    class Meta:
        verbose_name=_("Image")
        verbose_name_plural = _("Image")

    def __str__(self):
        return self.title

    def save(self):
        self.make_thumbnail()
        super(Image, self).save()

    def make_thumbnail(self):
        image = im.open(self.image)
        new_h = 300
        new_w = image.width*new_h/image.height

        image.thumbnail((new_w, new_h), im.ANTIALIAS)
        thumb_name, thumb_extension = os.path.splitext(self.image.name)
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
        self.image.save(thumb_filename, ContentFile(temp_thumb.read()), save=False)
        temp_thumb.close()

        return True
    
    
    
    
class Video(models.Model):
    title = models.CharField(max_length=100, verbose_name=_("Judul"))
    youtube_id = models.CharField(max_length=122, verbose_name=_("Nama Youtube"))
    url_video = models.URLField(max_length=1200, verbose_name=_("Link Video"))

    class Meta:
        verbose_name=_("Video")
        verbose_name_plural = _("Video")

    def __str__(self):
        return self.title
    