FROM python:alpine

RUN yum -y update && yum -y upgrade && \
    yum -y install git

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN git clone https://github.com/olga0503/DATA602hw1 /usr/src/app/DATA602hw1
EXPOSE 5000
CMD [ "python", "/usr/src/app/DATA602hw1/trader.py" ]
