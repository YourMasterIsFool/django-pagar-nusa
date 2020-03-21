from django.shortcuts import render
from berita.models import Berita
# Create your views here.
def index(request):
    berita = Berita.objects.order_by('-id')[0]
    context = {
        'data':berita
    }
    return render(request, 'berita/index.html', context)

def detail(request, slug):
    berita = Berita.objects.get(slug=slug)
    context = {
        'data':berita
    }

    return render(request, 'berita/detail.html', context)


def search(request):
    if request.method == 'GET':
        val = request.GET['search']
        berita = Berita.objects.filter(title__icontains=val)
        context = {
            'berita':berita
        }
        return render(request, 'berita/search.html', context)