FROM ubuntu:22.04

WORKDIR /root

RUN apt update -y && apt upgrade -y
RUN apt install -y iproute2 \
    nginx \
    systemctl \
    traceroute \
    iputils-ping \
    ssh \