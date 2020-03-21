# Generated by Django 2.1 on 2020-03-14 02:59

import ckeditor_uploader.fields
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Berita',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=225)),
                ('thumbnail', models.ImageField(upload_to='thumbnail')),
                ('body', ckeditor_uploader.fields.RichTextUploadingField(blank=True, null=True)),
                ('created_at', models.DateField(auto_now_add=True)),
            ],
        ),
        migrations.CreateModel(
            name='Kategory',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
            ],
        ),
        migrations.AddField(
            model_name='berita',
            name='Kategory',
            field=models.ManyToManyField(to='berita.Kategory'),
        ),
    ]
