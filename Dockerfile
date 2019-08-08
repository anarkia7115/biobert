FROM python:3.6

COPY ./requirements.txt /bioner/requirements.txt

WORKDIR /bioner

RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt

COPY . /bioner

