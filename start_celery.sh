#!/bin/bash
celery -A jenkinsTest worker -l info -c 4