from django.shortcuts import render

# Create your views here.
def tulis_berita(request):
    return render(request, 'control-panel/berita/tulis_berita.html')

def tambah_album_photo(request):
    return render(request, 'control-panel/albun/tambah_photo.html')

def tambah_album_vidie(request):
    return render(request, 'control-panel/album/tambah_vidio.html')