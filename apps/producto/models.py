from django.db import models

# Create your models here.

from apps.proveedor.models import Proveedor

class Producto(models.Model):
	nombre = models.CharField(max_length = 50)
	descripcion = models.CharField(max_length = 50)
	precio = models.IntegerField()
	stock = models.IntegerField()
	proveedor = models.ForeignKey(Proveedor, null=True, blank=True, on_delete=models.CASCADE)

	def __str__(self):
		return '{}'.format(self.nombre)