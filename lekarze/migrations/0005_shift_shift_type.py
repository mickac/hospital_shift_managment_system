# Generated by Django 3.0.2 on 2020-01-25 15:12

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('lekarze', '0004_shifttype'),
    ]

    operations = [
        migrations.AddField(
            model_name='shift',
            name='shift_type',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.PROTECT, to='lekarze.ShiftType'),
            preserve_default=False,
        ),
    ]
