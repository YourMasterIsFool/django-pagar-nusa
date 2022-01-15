from django.shortcuts import render
from anggota.models import Anggota
from django.db.models import Sum

# Create your views here.


def data_anggota(request, status):
    print(status)
    anggota = Anggota.objects.filter(status=status)
    context = {
        'anggota':anggota
    }
    return render(request, 'anggota/index.html', context)


def grafil_anggota(request):
    labels = []
    data = []
    
    queryset = Anggota.objects.values('tingkat__nama').annotate(name=Sum('name'))
    for a in queryset:
        labels.append(a['tingkat__nama'])
        data.append(a['nama'])
    
    context = {
        'data':data,
    }

    print(context)
    
    return render(request, 'anggota/grafik.html', context)