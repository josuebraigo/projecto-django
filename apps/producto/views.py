from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.views.generic import ListView, CreateView, UpdateView, DeleteView
from django.core.urlresolvers import reverse_lazy

from apps.producto.forms import ProductoForm
from apps.producto.models import Producto

# Create your views here.

def index_producto(request):
	return render(request, "producto/index.html")



def producto_view(request):
	if request.method == 'POST':
		form = ProductoForm(request.POST)
		if form.is_valid():
			form.save()
		return redirect('producto:index')
	else:
		form = ProductoForm()

	return render(request, 'producto/producto_form.html', {'form':form})


def producto_list(request):
	producto = Producto.objects.all().order_by('id')
	contexto = {'productos':producto}
	return render(request, 'producto/producto_list.html',contexto)

def producto_edit(request, id_producto):
	producto = Producto.objects.get(id=id_producto)
	if request.method == 'GET':
		form = ProductoForm(instance=producto)
	else:
		form = ProductoForm(request.POST, instance=producto)
		if form.is_valid():
			form.save()
		return redirect('producto:producto_listar')
	return render(request, 'producto/producto_form.html', {'form':form})

def producto_delete(request, id_producto):
	producto = Producto.objects.get(id = id_producto)
	if request.method == 'POST':
		producto.delete()
		return redirect('producto:producto_listar')
	return render(request, 'producto/producto_delete.html', {'producto':producto})

class ProductoList(ListView):
	model = Producto
	template_name = 'producto/producto_list.html'

class ProductoCreate(CreateView):
	model = Producto
	form_class = ProductoForm
	template_name = 'producto/producto_form.html'
	success_url = reverse_lazy('producto:producto_listar')

class ProductoUpdate(UpdateView):
	model = Producto
	form_class = ProductoForm
	template_name = 'producto/producto_form.html'
	success_url = reverse_lazy('producto:producto_listar')

class ProductoDelete(DeleteView): 
	model = Producto
	template_name = 'producto/producto_delete.html'
	success_url = reverse_lazy('producto:producto_listar')

# Create your views here.
