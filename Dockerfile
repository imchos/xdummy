FROM ubuntu:16.04

WORKDIR /root

RUN apt-get update &&\
    apt-get -y install wget

# for Xdummy
RUN apt-get -y install xserver-xorg-video-dummy
RUN wget http://xpra.org/xorg.conf

# remove unused files
RUN rm -rf /var/lib/apt/lists/*
