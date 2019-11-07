from django.conf.urls import url

from apps.producto.views import index_producto, producto_view, producto_list, producto_edit, producto_delete, \
ProductoList, ProductoCreate, ProductoUpdate, ProductoDelete


urlpatterns = [
	url(r'^index$', index_producto, name='index'),
	url(r'^nuevo$', ProductoCreate.as_view(), name='producto_crear'),
	url(r'^listar$', ProductoList.as_view(), name='producto_listar'),
	url(r'^editar/(?P<pk>\d+)/$', ProductoUpdate.as_view(), name='producto_editar'),
	url(r'^eliminar/(?P<pk>\d+)/$', ProductoDelete.as_view(), name='producto_eliminar'),
]
