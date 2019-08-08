FROM python:3.6

COPY ./requirements.txt /biobert/requirements.txt

WORKDIR /biobert

#RUN pip install -r requirements.txt
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt

COPY . /biobert

