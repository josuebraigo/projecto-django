from django import forms

from apps.inventario.models import Inventario

class InventarioForm(forms.ModelForm):

	class Meta:
		model = Inventario

		fields = [
			'producto',
			'cantidad',
		]

		labels = {
			'producto': 'Producto',
			'cantidad': 'Cantidad',
		}

		widgets = {
			'producto': forms.Select(attrs={'class':'form-control'}),
			'cantidad': forms.TextInput(attrs={'class':'form-control'}),
		}

