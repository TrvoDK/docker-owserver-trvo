FROM ubuntu:18.04

RUN apt-get update 
RUN apt-get install -y owfs owhttpd

COPY owfs.conf /etc/owfs.conf

RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
