# Generated by Django 2.0.4 on 2018-05-16 01:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('kitchen', '0003_prepare'),
    ]

    operations = [
        migrations.AddField(
            model_name='prepare',
            name='total',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='prepare',
            name='used',
            field=models.IntegerField(default=0),
        ),
        migrations.AlterField(
            model_name='prepare',
            name='num',
            field=models.IntegerField(default=0),
        ),
    ]
