from rest_framework import generics, status
from rest_framework.response import Response

from .models import order
from .serializer import orderSerializer

class ListCreateOrder(generics.ListAPIView):
  queryset = order.objects.all()
  serializer_class = orderSerializer
  
  def post(self, request, *args, **kwargs):
    data= request.data
    serr = orderSerializer(data=data)
    if (serr.is_valid()):
      serr.save()
      return Response(serr.validated_data, status=status.HTTP_200_OK)  
    
    return Response(status=status.HTTP_400_BAD_REQUEST)
    
    
    
