from django.shortcuts import render
from galery.models import Image, Video
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger


# Create your views here.
def galery_index(request):
    gallery = Image.objects.all()
    page = request.GET.get('page', 1)
 
    paginator = Paginator(gallery, 12)
    try:
        gallery = paginator.page(page)
    except PageNotAnInteger:
        gallery = paginator.page(1)
    except EmptyPage:
        gallery = paginator.page(paginator.num_pages)

    context = {
        'gallery':gallery
    }
    return render(request, 'galery/index.html', context)

def galery_video(request):
    gallery = Video.objects.all()
    page = request.GET.get('page', 1)
 
    paginator = Paginator(gallery, 12)
    try:
        gallery = paginator.page(page)
    except PageNotAnInteger:
        gallery = paginator.page(1)
    except EmptyPage:
        gallery = paginator.page(paginator.num_pages)

    context = {
        'gallery':gallery
    }
    return render(request, 'galery/video.html', context)