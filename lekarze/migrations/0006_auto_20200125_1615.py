# Generated by Django 3.0.2 on 2020-01-25 15:15

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('lekarze', '0005_shift_shift_type'),
    ]

    operations = [
        migrations.AlterField(
            model_name='shifttype',
            name='end_date',
            field=models.TimeField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='shifttype',
            name='start_date',
            field=models.TimeField(blank=True, null=True),
        ),
    ]
