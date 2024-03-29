from django.shortcuts import render
from django.http import HttpResponse
from django.views.generic import ListView, CreateView, UpdateView, DeleteView
from django.core.urlresolvers import reverse_lazy

from apps.cliente.forms import ClienteForm
from apps.cliente.models import Cliente
# Create your views here.

def index(request):
	return render(request, "cliente/index.html")



def cliente_view(request):
	if request.method == 'POST':
		form = clienteForm(request.POST)
		if form.is_valid():
			form.save()
		return redirect('cliente:index')
	else:
		form = ClienteForm()

	return render(request, 'cliente/cliente_form.html', {'form':form})


def cliente_list(request):
	cliente = Cliente.objects.all().order_by('id')
	contexto = {'cliente':cliente}
	return render(request, 'cliente/cliente_list.html',contexto)

def cliente_edit(request, id_cliente):
	cliente = Cliente.objects.get(id=id_cliente)
	if request.method == 'GET':
		form = ClienteForm(instance=cliente)
	else:
		form = ClienteForm(request.POST, instance=cliente)
		if form.is_valid():
			form.save()
		return redirect('cliente:cliente_listar')
	return render(request, 'cliente/cliente_form.html', {'form':form})

def cliente_delete(request, id_cliente):
	cliente = Cliente.objects.get(id = id_cliente)
	if request.method == 'POST':
		empleado.delete()
		return redirect('cliente:cliente_listar')
	return render(request, 'cliente/cliente_delete.html', {'cliente':cliente})

class ClienteList(ListView):
	model = Cliente
	template_name = 'cliente/cliente_list.html'

class ClienteCreate(CreateView):
	model = Cliente
	form_class = ClienteForm
	template_name = 'cliente/cliente_form.html'
	success_url = reverse_lazy('cliente:cliente_listar')

class ClienteUpdate(UpdateView):
	model = Cliente
	form_class = ClienteForm
	template_name = 'cliente/cliente_form.html'
	success_url = reverse_lazy('cliente:cliente_listar')

class ClienteDelete(DeleteView): 
	model = Cliente
	template_name = 'cliente/cliente_delete.html'
	success_url = reverse_lazy('cliente:cliente_listar')
# Create your views here.
