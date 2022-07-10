# pull official base image
FROM python:latest

# set work directory
# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1    # Prevents Python from writing pyc files to disc
ENV PYTHONUNBUFFERED 1           # Prevents Python from buffering stdout and stderr

WORKDIR /app
COPY . .


RUN apt update
RUN apt install netcat -y

RUN pip install psycopg2 django gunicorn


