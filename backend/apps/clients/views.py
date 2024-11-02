from rest_framework import generics, status

from .models import Customer
from .serializer import CustomerSerializer

class ListCreateClients(generics.ListAPIView):
  queryset = Customer.objects.all()
  serializer_class = CustomerSerializer
