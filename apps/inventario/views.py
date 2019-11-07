from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.views.generic import ListView, CreateView, UpdateView, DeleteView
from django.core.urlresolvers import reverse_lazy

from apps.inventario.forms import InventarioForm
from apps.inventario.models import Inventario

# Create your views here.

def index_inventario(request):
	return render(request, "inventario/index.html")



def inventario_view(request):
	if request.method == 'POST':
		form = InventarioForm(request.POST)
		if form.is_valid():
			form.save()
		return redirect('inventario:index')
	else:
		form = InventarioForm()

	return render(request, 'inventario/inventario_form.html', {'form':form})


def inventario_list(request):
	inventario = Inventario.objects.all().order_by('id')
	contexto = {'inventario':inventario}
	return render(request, 'inventario/inventario_list.html',contexto)

def inventario_edit(request, id_inventario):
	inventario = Inventario.objects.get(id=id_inventario)
	if request.method == 'GET':
		form = InventarioForm(instance=inventario)
	else:
		form = InventarioForm(request.POST, instance=inventario)
		if form.is_valid():
			form.save()
		return redirect('inventario:inventario_listar')
	return render(request, 'inventario/inventario_form.html', {'form':form})

def inventario_delete(request, id_inventario):
	inventario = Inventario.objects.get(id = id_inventario)
	if request.method == 'POST':
		inventario.delete()
		return redirect('inventario:inventario_listar')
	return render(request, 'inventario/inventario_delete.html', {'inventario':inventario})

class InventarioList(ListView):
	model = Inventario
	template_name = 'inventario/inventario_list.html'

class InventarioCreate(CreateView):
	model = Inventario
	form_class = InventarioForm
	template_name = 'inventario/inventario_form.html'
	success_url = reverse_lazy('inventario:inventario_listar')

class InventarioUpdate(UpdateView):
	model = Inventario
	form_class = InventarioForm
	template_name = 'inventario/inventario_form.html'
	success_url = reverse_lazy('inventario:inventario_listar')

class InventarioDelete(DeleteView): 
	model = Inventario
	template_name = 'inventario/inventario_delete.html'
	success_url = reverse_lazy('inventario:inventario_listar')