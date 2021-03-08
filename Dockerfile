FROM python:3.7-alpine
MAINTAINER Tiago Kretzer Walter

ENV PYTHONUNBUFFERED 1
# This tells python to run in unbuffered mode 

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user