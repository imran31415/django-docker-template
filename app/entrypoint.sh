#!/bin/sh

echo "Waiting for postgres..."

while ! nc -z db 5432; do
  sleep 0.1
done

echo "PostgreSQL started"

python manage.py flush --no-input
python manage.py migrate
python manage.py collectstatic --no-input
gunicorn myproject.wsgi:application --bind 0.0.0.0:8000
