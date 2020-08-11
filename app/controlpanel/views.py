from django.shortcuts import render

# Create your views here.
def dhashboard(request):
    return render(request, 'control-panel/dashboard.html')
    

def c_berita(request):
   
    return render(request, 'control-panel/berita/c_berita.html')

def c_album_foto(request):
    return render(request, 'control-panel/albun/tambah_photo.html')

def c_album_vidio(request):
    return render(request, 'control-panel/album/tambah_vidio.html')