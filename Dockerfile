FROM python:3.6

COPY ./requirements.txt /biobert/requirements.txt

WORKDIR /biobert

#RUN pip install -r requirements.txt
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt

# build args
ARG HW_BUCKET
ARG AK
ARG SK

ENV AK $AK
ENV SK $SK
ENV HW_OBS_ENDPOINT obs.cn-north-1.myhwclouds.com

# obsutil
RUN wget https://obs-community.obs.cn-north-1.myhuaweicloud.com/obsutil/current/obsutil_linux_amd64.tar.gz
RUN tar -xzf obsutil_linux_amd64.tar.gz
RUN mv obsutil_linux*/obsutil /usr/local/bin
RUN obsutil config -i $AK -k $SK -e $HW_OBS_ENDPOINT

COPY . /biobert

