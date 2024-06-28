#!/bin/bash
python manage.py migrate
python manage.py collectstatic --noinput
gunicorn myproject.wsgi --bind 0.0.0.0:$PORT
