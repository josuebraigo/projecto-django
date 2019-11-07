from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.views.generic import ListView, CreateView, UpdateView, DeleteView
from django.core.urlresolvers import reverse_lazy

from apps.compra.forms import CompraForm
from apps.compra.models import Compra
# Create your views here.

def index(request):
	return render(request, "compra/index.html")



def compra_view(request):
	if request.method == 'POST':
		form = CompraForm(request.POST)
		if form.is_valid():
			form.save()
		return redirect('compra:index')
	else:
		form = CompraForm()

	return render(request, 'compra/compra_form.html', {'form':form})


def compra_list(request):
	compra = Compra.objects.all().order_by('id')
	contexto = {'compra':compra}
	return render(request, 'compra/compra_list.html',contexto)

def compra_edit(request, id_compra):
	compra = Compra.objects.get(id=id_compra)
	if request.method == 'GET':
		form = CompraForm(instance=compra)
	else:
		form = CompraForm(request.POST, instance=compra)
		if form.is_valid():
			form.save()
		return redirect('compra:compra_listar')
	return render(request, 'compra/compra_form.html', {'form':form})

def compra_delete(request, id_compra):
	compra = Compra.objects.get(id = id_compra)
	if request.method == 'POST':
		compra.delete()
		return redirect('compra:compra_listar')
	return render(request, 'compra/compra_delete.html', {'compra':compra})

class CompraList(ListView):
	model = Compra
	template_name = 'compra/compra_list.html'

class CompraCreate(CreateView):
	model = Compra
	form_class = CompraForm
	template_name = 'compra/compra_form.html'
	success_url = reverse_lazy('compra:compra_listar')

class CompraUpdate(UpdateView):
	model = Compra
	form_class = CompraForm
	template_name = 'compra/compra_form.html'
	success_url = reverse_lazy('compra:compra_listar')

class CompraDelete(DeleteView): 
	model = Compra
	template_name = 'compra/compra_delete.html'
	success_url = reverse_lazy('compra:compra_listar')