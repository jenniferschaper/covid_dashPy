FROM python:3.9 as pybase

USER root

WORKDIR /application

COPY requirements.txt /application

RUN pip install --trusted-host pypi.python.org -r requirements.txt

from pybase as reqbase

COPY . /application

EXPOSE 8080

ENV NAME dashpy

CMD ["python3","application.py"]