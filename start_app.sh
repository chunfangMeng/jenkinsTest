#!/bin/bash

python manage.py collectstatic --noinput&&
python manage.py makemigrations&&
python manage.py migrate &&
gunicorn jenkinsTest.wsgi -b 0.0.0.0:8000 &&
tail -f /dev/null

exec "$@"