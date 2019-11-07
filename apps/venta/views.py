from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.views.generic import ListView, CreateView, UpdateView, DeleteView
from django.core.urlresolvers import reverse_lazy

from apps.venta.forms import VentaForm
from apps.venta.models import Venta

# Create your views here.

def index_venta(request):
	return render(request, "venta/index.html")



def venta_view(request):
	if request.method == 'POST':
		form = VentaForm(request.POST)
		if form.is_valid():
			form.save()
		return redirect('venta:index')
	else:
		form = VentaForm()

	return render(request, 'venta/venta_form.html', {'form':form})


def venta_list(request):
	venta = Venta.objects.all().order_by('id')
	contexto = {'venta':venta}
	return render(request, 'venta/venta_list.html',contexto)

def venta_edit(request, id_venta):
	venta = Venta.objects.get(id=id_venta)
	if request.method == 'GET':
		form = VentaForm(instance=venta)
	else:
		form = VentaForm(request.POST, instance=venta)
		if form.is_valid():
			form.save()
		return redirect('venta:venta_listar')
	return render(request, 'venta/venta_form.html', {'form':form})

def venta_delete(request, id_venta):
	venta = Venta.objects.get(id = id_venta)
	if request.method == 'POST':
		venta.delete()
		return redirect('venta:venta_listar')
	return render(request, 'venta/venta_delete.html', {'venta':venta})

class VentaList(ListView):
	model = Venta
	template_name = 'venta/venta_list.html'

class VentaCreate(CreateView):
	model = Venta
	form_class = VentaForm
	template_name = 'venta/venta_form.html'
	success_url = reverse_lazy('venta:venta_listar')

class VentaUpdate(UpdateView):
	model = Venta
	form_class = VentaForm
	template_name = 'venta/venta_form.html'
	success_url = reverse_lazy('venta:venta_listar')

class VentaDelete(DeleteView): 
	model = Venta
	template_name = 'venta/venta_delete.html'
	success_url = reverse_lazy('venta:venta_listar')