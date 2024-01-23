#!/bin/bash
celery -A app_celery worker -l info -c 4