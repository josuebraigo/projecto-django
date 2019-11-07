from django import forms

from apps.producto.models import Producto

class ProductoForm(forms.ModelForm):

	class Meta:
		model = Producto

		fields = [
			'nombre',
			'descripcion',
			'precio',
			'stock',
			'proveedor'
		]

		labels = {
			'nombre': 'Nombre',
			'descripcion': 'Descripción',
			'precio': 'Precio',
			'stock': 'Stock',
			'proveedor': 'Proveedor'
		}
		
		widgets = {
			'nombre': forms.TextInput(attrs={'class':'form-control'}),
			'descripcion': forms.TextInput(attrs={'class':'form-control'}),
			'precio': forms.TextInput(attrs={'class':'form-control'}),
			'stock': forms.TextInput(attrs={'class':'form-control'}),
			'proveedor': forms.Select(attrs={'class':'form-control'}),
		}