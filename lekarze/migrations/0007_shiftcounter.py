# Generated by Django 3.0.2 on 2020-01-25 19:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('lekarze', '0006_auto_20200125_1615'),
    ]

    operations = [
        migrations.CreateModel(
            name='ShiftCounter',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date', models.DateTimeField(blank=True, null=True)),
                ('counter', models.SmallIntegerField(default=0)),
            ],
        ),
    ]
