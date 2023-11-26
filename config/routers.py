from rest_framework.routers import SimpleRouter

from cars.viewsets import BrandViewSet

router = SimpleRouter()

router.register('brand', BrandViewSet, basename='brand')
