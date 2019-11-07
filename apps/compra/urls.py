from django.conf.urls import url
from django.contrib.auth.decorators import login_required

from apps.compra.views import index, compra_view, compra_list, compra_edit, compra_delete, \
	CompraList, CompraCreate, CompraUpdate, CompraDelete

urlpatterns = [
    url(r'^$', index, name='index'),
    url(r'^nuevo$', login_required(CompraCreate.as_view()), name='compra_crear'),
    url(r'^listar$', login_required(CompraList.as_view()), name='compra_listar'),
    url(r'^editar/(?P<pk>\d+)/$', login_required(CompraUpdate.as_view()), name='compra_editar'),
    url(r'^eliminar/(?P<pk>\d+)/$', login_required(CompraDelete.as_view()), name='compra_eliminar'),


]
