from rest_framework import serializers
from .models import order_items

class order_itemsSerializer(serializers.ModelSerializer):
  
  class Meta:
    model = order_items
    fields = '__all__'