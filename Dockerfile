# pull official base image
FROM python:3.10.5

# set work directory
WORKDIR /app
COPY . .
RUN apt update
RUN apt install netcat -y

RUN pip install psycopg2 django


