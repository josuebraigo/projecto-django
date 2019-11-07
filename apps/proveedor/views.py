from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.views.generic import ListView, CreateView, UpdateView, DeleteView
from django.core.urlresolvers import reverse_lazy

from apps.proveedor.forms import ProveedorForm
from apps.proveedor.models import Proveedor
# Create your views here.

def index_proveedor(request):
	return render(request, "proveedor/index.html")


def proveedor_view(request):
	if request.method == 'POST':
		form = ProveedorForm(request.POST)
		if form.is_valid():
			form.save()
		return redirect('proveedor:index')
	else:
		form = ProveedorForm()

	return render(request, 'proveedor/proveedor_form.html', {'form':form})

def proveedor_list(request):
	proveedor = Proveedor.objects.all().order_by('id')
	contexto = {'proveedores':proveedor}
	return render(request, 'proveedor/proveedor_list.html',contexto)

def proveedor_edit(request, id_proveedor):
	proveedor = Proveedor.objects.get(id=id_proveedor)
	if request.method == 'GET':
		form = ProveedorForm(instance=proveedor)
	else:
		form = ProveedorForm(request.POST, instance=proveedor)
		if form.is_valid():
			form.save()
		return redirect('proveedor:proveedor_listar')
	return render(request, 'proveedor/proveedor_form.html', {'form':form})

def proveedor_delete(request, id_empleado):
	proveedor = Proveedor.objects.get(id = id_proveedor)
	if request.method == 'POST':
		proveedor.delete()
		return redirect('proveedor:proveedor_listar')
	return render(request, 'proveedor/proveedor_delete.html', {'proveedor':proveedor})

class ProveedorList(ListView):
	model = Proveedor
	template_name = 'proveedor/proveedor_list.html'

class ProveedorCreate(CreateView):
	model = Proveedor
	form_class = ProveedorForm
	template_name = 'proveedor/proveedor_form.html'
	success_url = reverse_lazy('proveedor:proveedor_listar')

class ProveedorUpdate(UpdateView):
	model = Proveedor
	form_class = ProveedorForm
	template_name = 'proveedor/proveedor_form.html'
	success_url = reverse_lazy('proveedor:proveedor_listar')

class ProveedorDelete(DeleteView): 
	model = Proveedor
	template_name = 'proveedor/proveedor_delete.html'
	success_url = reverse_lazy('proveedor:proveedor_listar')

# Create your views here.


# Create your views here.
