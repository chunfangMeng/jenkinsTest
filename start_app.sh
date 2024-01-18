#!/bin/bash

python manage.py collectstatic --noinput&&
python manage.py makemigrations&&
python manage.py migrate &&
gunicorn -c ./gunicorn.conf.py jenkinsTest.wsgi &&
tail -f /dev/null

exec "$@"