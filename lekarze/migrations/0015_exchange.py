# Generated by Django 3.0.2 on 2020-01-26 16:07

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('lekarze', '0014_shiftcounter_department'),
    ]

    operations = [
        migrations.CreateModel(
            name='Exchange',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('status', models.SmallIntegerField(default=0)),
                ('shift', models.ForeignKey(null=True, on_delete=django.db.models.deletion.PROTECT, to='lekarze.Shift')),
                ('who', models.ForeignKey(null=True, on_delete=django.db.models.deletion.PROTECT, related_name='who', to=settings.AUTH_USER_MODEL)),
                ('whom', models.ForeignKey(null=True, on_delete=django.db.models.deletion.PROTECT, related_name='whom', to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
