from django.db import models
from ckeditor_uploader.fields import RichTextUploadingField, RichTextUploadingField
from django.contrib.auth.models import User
from django.utils.text import slugify
import uuid
from PIL import Image
import os.path
from io import BytesIO
from django.core.files.base import ContentFile
from django.utils.translation import gettext as _

# Create your models here.
class Kategory(models.Model):
    name = models.CharField(max_length=100)
    
    class Meta:
        verbose_name=_("Kategori")
        verbose_name_plural = _("Kategori")
    
    def __str__(self):
        return self.name

    

class StatusNews(models.Model):
    status = models.CharField(max_length=100)

    class Meta:
        verbose_name=_("Status News")
        verbose_name_plural = _("Status News")
    
    def __str__(self):
        return self.status
    


class Berita(models.Model):
    title = models.CharField(max_length=225, verbose_name = _("Judul"))
    kategori = models.ManyToManyField(Kategory, related_name="kategori")
    thumbnail = models.ImageField(upload_to='thumbnail', verbose_name=_("Gambar Kecil"))
    body = RichTextUploadingField(blank=True, null=True,
                                      config_name='default', verbose_name=_("Teks Berita")
                                    )    
    slug = models.SlugField(max_length=225, editable=False)
    created_at = models.DateField(auto_now_add=True)    
    penulis = models.ForeignKey(User, on_delete=models.CASCADE)
    status = models.ForeignKey(StatusNews, on_delete=models.CASCADE, blank=True, null=True)

    def __str__(self):
        return self.title

    def save(self, **kwargs):
        str_rand = uuid.uuid4().hex
        self.slug = slugify(self.title + str(str_rand)[:14])
        self.make_thumbnail()
        super(Berita, self).save()

    
    def make_thumbnail(self):
        image = Image.open(self.thumbnail)
        new_h = 300
        new_w = image.width*new_h/image.height

        image.thumbnail((new_w, new_h), Image.ANTIALIAS)
        thumb_name, thumb_extension = os.path.splitext(self.thumbnail.name)
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
        self.thumbnail.save(thumb_filename, ContentFile(temp_thumb.read()), save=False)
        temp_thumb.close()

        return True

    
    class Meta:
        verbose_name=_("Berita")
        verbose_name_plural = _("Berita")