from rest_framework import generics, status
from rest_framework.response import Response

from .models import product
from .serializer import productSerializer

class ListCreateProducts(generics.ListAPIView):
  queryset = product.objects.all()
  serializer_class = productSerializer
  
  def post(self, request, *args, **kwargs):
    data= request.data
    serr = productSerializer(data=data)
    if (serr.is_valid()):
      serr.save()
      return Response(serr.validated_data, status=status.HTTP_200_OK)  
    
    return Response(status=status.HTTP_400_BAD_REQUEST)
    
    
    
    
