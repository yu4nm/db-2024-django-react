from rest_framework import serializers
from .models import manufacturer

class manufacturerSerializer(serializers.ModelSerializer):
  
  class Meta:
    model = manufacturer
    fields = '__all__'