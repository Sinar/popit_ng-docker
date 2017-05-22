from settings import *
import os

DEBUG = False

ALLOWED_HOSTS = [".sinarproject.org"]

DATABASES = {
        'default': {
            'ENGINE': 'django.db.backends.postgresql_psycopg2',
            'NAME': os.environ.get('POSTGRES_DB', os.environ.get('POSTGRES_NAME', "postgres")),
            'USER': os.environ.get('POSTGRES_NAME', "postgres"),
            'PASSWORD': os.environ.get('POSTGRES_PASSWORD', ""),
            'HOST': "postgres",
            'PORT': '',
            }
        }

BROKER_URL = "redis://redis:6379/1"
CELERY_RESULT_BACKEND = BROKER_URL
ES_DATA_BIN = "redis://redis:6379/2"

ES_HOST = ["http://elastic:9200",]

STATIC_ROOT = "/static"
