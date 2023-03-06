FROM python:3.12.0a5-slim

WORKDIR /app

RUN apt-get update \
    && apt-get -y install libpq-dev gcc \
    && pip3 install psycopg2

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD ["/bin/bash","run.sh"]
