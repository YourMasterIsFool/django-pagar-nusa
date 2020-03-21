from django.db import models
from ckeditor_uploader.fields import RichTextUploadingField, RichTextUploadingField
from django.contrib.auth.models import User
from django.utils.text import slugify
import uuid

# Create your models here.
class Kategory(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name
    

class Berita(models.Model):
    title = models.CharField(max_length=225)
    kategori = models.ManyToManyField(Kategory, related_name="kategori")
    thumbnail = models.ImageField(upload_to='thumbnail')
    body = RichTextUploadingField(blank=True, null=True,
                                      config_name='default',
                                    )    
    slug = models.SlugField(max_length=225, editable=False)
    created_at = models.DateField(auto_now_add=True)    
    penulis = models.ForeignKey(User, on_delete=models.CASCADE)


    def __str__(self):
        return self.title



    def save(self, **kwargs):
        str_rand = uuid.uuid4().hex
        self.slug = slugify(self.title + str(str_rand)[:14])
        super(Berita, self).save()
    
    
    