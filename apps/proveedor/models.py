from django.db import models

# Create your models here.

class Proveedor(models.Model):
	empresa = models.CharField(max_length = 50)
	empleado = models.CharField(max_length = 50)
	rfc = models.CharField(max_length = 13)

	def __str__(self):
		return '{}'.format(self.empresa)