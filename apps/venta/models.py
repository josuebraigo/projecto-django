from django.db import models

# Create your models here.

from apps.empleado.models import Empleado
from apps.producto.models import Producto


class Venta(models.Model):
	empleado = models.ForeignKey(Empleado, null=True, blank=True, on_delete=models.CASCADE)
	producto = models.ForeignKey(Producto, null=True, blank=True, on_delete=models.CASCADE)
	total = models.IntegerField()
	neto = models.IntegerField()
	iva = models.IntegerField()