# coding: utf-8
from __future__ import absolute_import
from celery import Celery, platforms
from dotenv import load_dotenv
import os

platforms.C_FORCE_ROOT = True

load_dotenv()

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'jenkinsTest.settings')


app = Celery(
    'app_celery',
    backend='redis://redis:6379/3',
    broker='redis://redis:6379/3',
    include=[
        'auth_app.celery_tasks',
    ])

app.config_from_object('django.conf:settings')

app.conf.update(
    worker_pool_restart=True,
    worker_prefetch_multiplier=1,
    enable_utc=True,
    timezone='Europe/London',
    CELERYBEAT_SCHEDULE={

    }
)

app.autodiscover_tasks()
