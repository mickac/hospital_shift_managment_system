# Generated by Django 3.0.2 on 2020-01-26 14:54

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('lekarze', '0011_auto_20200126_1544'),
    ]

    operations = [
        migrations.AlterField(
            model_name='shiftcounter',
            name='department',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.PROTECT, to='lekarze.Department'),
        ),
    ]
