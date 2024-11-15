from django.shortcuts import render

# Create your views here.
from rest_framework import generics, status
from rest_framework.response import Response

from .models import manufacturer
from .serializer import manufacturerSerializer

class ListCreateManufacturer(generics.ListAPIView):
  queryset = manufacturer.objects.all()
  serializer_class = manufacturerSerializer
  
  def post(self, request, *args, **kwargs):
    data= request.data
    serr = manufacturerSerializer(data=data)
    if (serr.is_valid()):
      serr.save()
      return Response(serr.validated_data, status=status.HTTP_200_OK)  
    
    return Response(status=status.HTTP_400_BAD_REQUEST)
