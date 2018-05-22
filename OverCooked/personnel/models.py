from django.db import models


class Employee(models.Model):
    name = models.CharField(max_length=32)
    phone = models.CharField(max_length=16)
    performance = models.IntegerField(null=True)
    salary = models.DecimalField(max_digits=16, decimal_places=2, null=True, blank=True)


class Job(models.Model):
    name = models.CharField(max_length=32)
    salary = models.DecimalField(max_digits=16, decimal_places=2, null=True, blank=True)


class Distribute(models.Model):
    employee = models.ForeignKey('Employee', on_delete=models.CASCADE)
    job = models.ForeignKey('Job', on_delete=models.CASCADE)
    period = models.CharField(max_length=300)
