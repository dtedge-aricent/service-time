FROM ubuntu:latest
MAINTAINER Anuyog Chauhan "anuyog.chauhan@aricent.com"
ENV http_proxy http://165.225.104.34:80
ENV https_proxy https://165.225.104.34.80
RUN export http_proxy=http://165.225.104.34:80 && export https_proxy=https://165.225.104.34:80 && apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN export http_proxy=http://165.225.104.34:80 && export https_proxy=https://165.225.104.34:80 && pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["service-time.py"]
