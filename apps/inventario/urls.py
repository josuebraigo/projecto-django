from django.conf.urls import url

from apps.inventario.views import index_inventario, inventario_view, inventario_list, inventario_edit, inventario_delete, \
InventarioList, InventarioCreate, InventarioUpdate, InventarioDelete


urlpatterns = [
	url(r'^index$', index_inventario, name='index'),
	url(r'^nuevo$', InventarioCreate.as_view(), name='inventario_crear'),
	url(r'^listar$', InventarioList.as_view(), name='inventario_listar'),
	url(r'^editar/(?P<pk>\d+)/$', InventarioUpdate.as_view(), name='inventario_editar'),
	url(r'^eliminar/(?P<pk>\d+)/$', InventarioDelete.as_view(), name='inventario_eliminar'),
]
