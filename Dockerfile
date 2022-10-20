FROM ubuntu:22.04
# FROM ubuntu:20.04

WORKDIR /root

RUN apt update -y && apt upgrade -y
RUN apt install -y iproute2 \
    nginx \
    systemctl \
    traceroute \
    iputils-ping \
    ssh \
    iperf3 \
    ufw \
    curl

# RUN curl -s https://deb.frrouting.org/frr/keys.asc | apt-key add -
# RUN FRRVER="frr-stable"
# RUN echo deb https://deb.frrouting.org/frr $(lsb_release -s -c) $FRRVER | tee -a /etc/apt/sources.list.d/frr.list
# RUN apt update -y && apt install -y frr frr-pythontools