FROM debian:jessie

MAINTAINER Cyprien DIOT <wixyvir@gmail.com>

RUN apt-get update && apt-get install -y openntpd && apt-get clean && rm -rf /var/lib/dpkg/* && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/usr/sbin/openntpd", "-d", "-f", "/etc/openntpd/ntpd.conf" ]
