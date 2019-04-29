FROM ubuntu
MAINTAINER Smit Shah
RUN apt update
RUN apt-get install python3 python3-pip -y
COPY . ~/py
WORKDIR ~/py
RUN pip3 install -r requirements.txt
CMD python3 index.py