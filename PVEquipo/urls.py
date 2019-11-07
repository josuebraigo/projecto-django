"""PVEquipo URL Configuration

The `urlpatterns` list 	routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.9/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url, include
from django.contrib import admin
from django.contrib.auth.views import login

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^empleado/', include('apps.empleado.urls',namespace="empleado")),
    url(r'^producto/', include('apps.producto.urls',namespace="producto")),
    url(r'^proveedor/', include('apps.proveedor.urls',namespace="proveedor")),
    url(r'^cliente/', include('apps.cliente.urls',namespace="cliente")),
    url(r'^compra/', include('apps.compra.urls',namespace="compra")),
    url(r'^inventario/', include('apps.inventario.urls',namespace="inventario")),
    url(r'^venta/', include('apps.venta.urls',namespace="venta")),

    url(r'^usuario/', include('apps.usuario.urls',namespace="usuario")),
    url(r'^$',login, {'template_name':'index.html'}, name="login"),
]
