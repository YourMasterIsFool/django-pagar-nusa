from django.shortcuts import render
from anggota.models import Anggota
from django.db.models import Sum, Count



# Create your views here.


def data_anggota(request, status):
    anggota = Anggota.objects.filter(status=status)
    context = {
        'anggota':anggota
    }
    return render(request, 'anggota/index.html', context)


def grafil_anggota(request):
    queryset = Anggota.objects.all().values('tingkat').annotate(the_count=Count('tingkat')).order_by('the_count')
    color = []
    for a in queryset:
        if a['tingkat'] == 'polos':
            color.append('rgba(0,154,23)')
        elif a['tingkat'] == 'putih':
            color.append('rgba(54, 162, 235, 0.2)')
        elif a['tingkat'] == 'kuning':
            color.append('rgba(255,255,0)')
        elif a['tingkat'] == 'merah':
            color.append('rgba(255, 0, 0)')
        elif a['tingkat'] == 'biru':
            color.append('rgba(0, 0, 255)')
        elif a['tingkat'] == 'coklat':
            color.append('rgba(165,42,42,1)')
    
    
    
    data = [x['the_count'] for x in queryset]
    label = [x['tingkat'] for x in queryset]
        

    print(data)
    
    context = {
        'data':data,
        'label':label,
        'color':color,
        'total':Anggota.objects.count()
    }
    return render(request, 'anggota/grafik.html', context)