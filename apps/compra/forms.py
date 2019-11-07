from django import forms

from apps.compra.models import Compra

class CompraForm(forms.ModelForm):

	class Meta:
		model = Compra

		fields = [
			'empleado',
			'producto',
			'neto',
			'iva',
			'total',
			'numero_productos',
		]

		labels = {
			'empleado': 'Empleado',
			'producto': 'Producto',
			'neto': 'Costo neto',
			'iva': 'IVA',
			'total': 'Total',
			'numero_productos': 'Número de Productos',
		}

		widgets = {
			'empleado': forms.Select(attrs={'class':'form-control'}),
			'producto': forms.Select(attrs={'class':'form-control'}),
			'neto': forms.TextInput(attrs={'class':'form-control'}),
			'iva': forms.TextInput(attrs={'class':'form-control'}),
			'total': forms.TextInput(attrs={'class':'form-control'}),
			'numero_productos': forms.TextInput(attrs={'class':'form-control'}),
		}

