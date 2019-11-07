from django.conf.urls import url

from apps.venta.views import index_venta, venta_view, venta_list, venta_edit, venta_delete, \
VentaList, VentaCreate, VentaUpdate, VentaDelete


urlpatterns = [
	url(r'^index$', index_venta, name='index'),
	url(r'^nuevo$', VentaCreate.as_view(), name='venta_crear'),
	url(r'^listar$', VentaList.as_view(), name='venta_listar'),
	url(r'^editar/(?P<pk>\d+)/$', VentaUpdate.as_view(), name='venta_editar'),
	url(r'^eliminar/(?P<pk>\d+)/$', VentaDelete.as_view(), name='venta_eliminar'),
]
