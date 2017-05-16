#!/bin/sh

python manage.py collectstatic --noinput
python manage.py migrate
exec gunicorn -b 0.0.0.0:8000 popit_ng.wsgi
