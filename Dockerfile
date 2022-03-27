FROM python:3.10.4-slim-bullseye

LABEL maintener="Gavrinjo"

COPY requirements.txt /requirements.txt
RUN pip install -r requirements.txt
WORKDIR /
COPY . /

ENV FLASK_APP=hello
ENV FLASK_DEBUG=false

 CMD ["flask run"]