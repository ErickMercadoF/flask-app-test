FROM python:3.10.6-slim

ENV PYTHONUNBUFFERED 1

WORKDIR /user/src/app

COPY requirements.txt ./

RUN pip install -r requirements.text

COPY . ./


CMD exec guinicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 app:app
