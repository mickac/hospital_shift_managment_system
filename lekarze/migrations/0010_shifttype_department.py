# Generated by Django 3.0.2 on 2020-01-26 14:42

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('lekarze', '0009_auto_20200125_2020'),
    ]

    operations = [
        migrations.AddField(
            model_name='shifttype',
            name='department',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.PROTECT, to='lekarze.Department'),
            preserve_default=False,
        ),
    ]
