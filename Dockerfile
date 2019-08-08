FROM python:3.6

COPY ./requirements.txt /bioner/requirements.txt

WORKDIR /bioner

RUN pip install -r requirements.txt

COPY . /bioner

