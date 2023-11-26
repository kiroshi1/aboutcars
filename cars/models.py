from django.db import models


class Brand(models.Model):
    name = models.CharField('Название', max_length=128)

    class Meta:
        verbose_name = 'Марка'
        verbose_name_plural = 'Марки'
    