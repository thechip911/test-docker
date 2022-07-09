#!/bin/sh
while ! nc -z "db" "5432"; do
    echo "DB not ready, keep waiting..."
    sleep 1
done

python manage.py makemigrations
python manage.py migrate
python manage.py runserver 0.0.0.0:8000