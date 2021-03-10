from django.shortcuts import render
from anggota.models import Anggota
# Create your views here.


def data_anggota(request, status):
    print(status)
    anggota = Anggota.objects.filter(status=status)
    context = {
        'anggota':anggota
    }
    return render(request, 'anggota/index.html', context)
