from django.shortcuts import render

# Create your views here.
def index_jadwal(request):
    return render(request, 'jadwal/index.html')
