FROM debian:jessie

MAINTAINER Cyprien DIOT <wixyvir@gmail.com>

RUN apt-get update && apt-get install -y openntpd && apt-get clean
ADD ntpd.conf /etc/openntpd/ntpd.conf

EXPOSE 123/udp

ENTRYPOINT [ "/usr/sbin/openntpd", "-d", "-f", "/etc/openntpd/ntpd.conf" ]
