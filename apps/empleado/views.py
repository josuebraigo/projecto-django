from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.views.generic import ListView, CreateView, UpdateView, DeleteView
from django.core.urlresolvers import reverse_lazy

from apps.empleado.forms import EmpleadoForm
from apps.empleado.models import Empleado
# Create your views here.

def index(request):
	return render(request, "empleado/index.html")



def empleado_view(request):
	if request.method == 'POST':
		form = EmpleadoForm(request.POST)
		if form.is_valid():
			form.save()
		return redirect('empleado:index')
	else:
		form = EmpleadoForm()

	return render(request, 'empleado/empleado_form.html', {'form':form})


def empleado_list(request):
	empleado = Empleado.objects.all().order_by('id')
	contexto = {'empleados':empleado}
	return render(request, 'empleado/empleado_list.html',contexto)

def empleado_edit(request, id_empleado):
	empleado = Empleado.objects.get(id=id_empleado)
	if request.method == 'GET':
		form = EmpleadoForm(instance=empleado)
	else:
		form = EmpleadoForm(request.POST, instance=empleado)
		if form.is_valid():
			form.save()
		return redirect('empleado:empleado_listar')
	return render(request, 'empleado/empleado_form.html', {'form':form})

def empleado_delete(request, id_empleado):
	empleado = Empleado.objects.get(id = id_empleado)
	if request.method == 'POST':
		empleado.delete()
		return redirect('empleado:empleado_listar')
	return render(request, 'empleado/empleado_delete.html', {'empleado':empleado})

class EmpleadoList(ListView):
	model = Empleado
	template_name = 'empleado/empleado_list.html'

class EmpleadoCreate(CreateView):
	model = Empleado
	form_class = EmpleadoForm
	template_name = 'empleado/empleado_form.html'
	success_url = reverse_lazy('empleado:empleado_listar')

class EmpleadoUpdate(UpdateView):
	model = Empleado
	form_class = EmpleadoForm
	template_name = 'empleado/empleado_form.html'
	success_url = reverse_lazy('empleado:empleado_listar')

class EmpleadoDelete(DeleteView): 
	model = Empleado
	template_name = 'empleado/empleado_delete.html'
	success_url = reverse_lazy('empleado:empleado_listar')

# Create your views here.
