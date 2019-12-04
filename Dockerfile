FROM python:3.7.4-alpine3.10
RUN apk --update add mariadb-connector-c-dev build-base linux-headers pcre-dev jpeg-dev
COPY Pipfile .
COPY Pipfile.lock .
RUN pip install pipenv==2018.11.26 && pipenv install --system
