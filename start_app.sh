#!/bin/bash

python manage.py collectstatic --noinput&&
python manage.py makemigrations&&
python manage.py migrate &&
gunicorn -c ./gunicorn.conf.py jenkinsTest.wsgi --reload &&
tail -f /dev/null

exec "$@"