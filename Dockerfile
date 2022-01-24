FROM python:3.11.0a4-alpine3.15
MAINTAINER dtmdona

ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D usr
USER usr

RUN pip install --upgrade pip

COPY --chown=usr:usr requirements.txt requirements.txt
RUN pip install --user -r requirements.txt

COPY --chown=usr:usr . .