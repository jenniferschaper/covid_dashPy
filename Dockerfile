FROM python:3.9 as pybase

USER root

WORKDIR /app

COPY requirements.txt /app

RUN pip install --trusted-host pypi.python.org -r requirements.txt

from pybase as reqbase

COPY . /app

EXPOSE 80

ENV NAME dashpy

CMD ["python3","app.py"]