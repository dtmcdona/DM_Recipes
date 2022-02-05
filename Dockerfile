FROM python:3.11.0a4-alpine3.15
MAINTAINER dtmdona

ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app
RUN python3 -m venv /app/venv
ENV PATH="/home/usr/.local/bin:${PATH}"
COPY ./app /app
RUN source venv/bin/activate
RUN pip install --upgrade pip

RUN adduser -D usr
USER usr

COPY --chown=usr:usr requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

RUN python manage.py test core.tests.test_model