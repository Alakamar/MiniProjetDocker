FROM python:latest

WORKDIR /usr/src/app

COPY . .

RUN pip3 install flask \
    psycopg2

EXPOSE 5000

ENTRYPOINT flask --app app run --debug --host=0.0.0.0