FROM ubuntu:16.04

RUN apt-get update &&\
    apt-get -y install wget xserver-xorg-video-dummy &&\
    rm -rf /var/lib/apt/lists/*

WORKDIR ~

RUN wget http://xpra.org/xorg.conf
