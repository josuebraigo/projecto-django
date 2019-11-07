from django.db import models

# Create your models here.

from apps.producto.models import Producto

class Inventario(models.Model):
	producto = models.ForeignKey(Producto, null=True, blank=True, on_delete=models.CASCADE)
	cantidad = models.IntegerField()