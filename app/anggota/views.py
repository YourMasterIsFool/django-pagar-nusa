from django.shortcuts import render
from anggota.models import Anggota
from django.db.models import Sum, Count



# Create your views here.


def data_anggota(request, status):
    print(status)
    anggota = Anggota.objects.filter(status=status)
    context = {
        'anggota':anggota
    }
    return render(request, 'anggota/index.html', context)


def grafil_anggota(request):
    queryset = Anggota.objects.values('tingkat').annotate(the_count=Count('tingkat'))
    data = [x['the_count'] for x in queryset]
    context = {
        'data':data,
        'total':Anggota.objects.count()
    }
    return render(request, 'anggota/grafik.html', context)