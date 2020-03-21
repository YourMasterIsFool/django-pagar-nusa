from django.shortcuts import render
from anggota.models import Anggota
# Create your views here.
def data_anggota(request, status):
    anggota = Anggota.objects.filter(status=status)
    context = {
        'anggota':anggota
    }
    print(context)

    return render(request, 'anggota/index.html', context)
