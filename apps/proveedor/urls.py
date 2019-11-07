from django.conf.urls import url

from apps.proveedor.views import index_proveedor, proveedor_view, proveedor_list, proveedor_edit, proveedor_delete, \
	ProveedorList, ProveedorCreate, ProveedorUpdate, ProveedorDelete

urlpatterns = [
	url(r'^index$', index_proveedor,name='index'),
	url(r'^nuevo$', ProveedorCreate.as_view(), name='proveedor_crear'),
	url(r'^listar$', ProveedorList.as_view(), name='proveedor_listar'),
	url(r'^editar/(?P<pk>\d+)/$', ProveedorUpdate.as_view(), name='proveedor_editar'),
	url(r'^eliminar/(?P<pk>\d+)/$', ProveedorDelete.as_view(), name='proveedor_eliminar'),
]
