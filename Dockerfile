# DOCKER-VERSION 0.8.0 
FROM ubuntu
MAINTAINER takitake <TakiTake.create@gmail.com>

RUN apt-get update
RUN apt-get install -y git curl

RUN git clone https://github.com/riywo/anyenv ~/.anyenv
RUN echo 'export PATH="/.anyenv/bin:$PATH"' >> /etc/profile.d/anyenv.sh
RUN echo 'eval "$(anyenv init -)"' >> /etc/profile.d/anyenv.sh
