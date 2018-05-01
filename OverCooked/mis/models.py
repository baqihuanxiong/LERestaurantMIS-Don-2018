from django.db import models


class Food_Class(models.Model):
    class_name = models.CharField(max_length=20)


class Food(models.Model):
    food_name = models.CharField(max_length=20)
    food_class = models.ForeignKey(Food_Class, on_delete=models.CASCADE)
    describe = models.CharField(max_length=500)
    image = models.CharField(max_length=500)
    price = models.IntegerField()
    process_time = models.TimeField()
