FROM python:3.11.0a4-alpine3.15
MAINTAINER dtmdona

ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D usr
USER usr

ENV PATH="/home/usr/.local/bin:${PATH}"

RUN pip install --upgrade pip

COPY --chown=usr:usr requirements.txt requirements.txt
RUN pip install -r requirements.txt

RUN python manage.py test core.tests.test_model