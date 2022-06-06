from django.urls import path, include
from rest_framework import routers
from .views import *


# SE ENCARGA DE DARLE UNA RUTA AL API
router = routers.DefaultRouter()
router.register('producto', ProductoViewSet)


urlpatterns = [
    path('api/', include(router.urls)),
   ]