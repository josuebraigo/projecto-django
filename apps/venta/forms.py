from django import forms

from apps.venta.models import Venta

class VentaForm(forms.ModelForm):

	class Meta:
		model = Venta

		fields = [
			'empleado',
			'producto',
			'total',
			'neto',
			'iva',
		]

		labels = {
			'empleado': 'Empleado',
			'producto': 'Producto',
			'total': 'Total',
			'neto': 'Neto',
			'iva': 'IVA',
		}
		
		widgets = {
			'empleado': forms.Select(attrs={'class':'form-control'}),
			'producto': forms.Select(attrs={'class':'form-control'}),
			'total': forms.TextInput(attrs={'class':'form-control'}),
			'neto': forms.TextInput(attrs={'class':'form-control'}),
			'iva': forms.TextInput(attrs={'class':'form-control'}),
		}