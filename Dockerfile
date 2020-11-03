FROM alpine:latest

RUN apk update && apk add --no-cache openrc openntpd
RUN rc-update add openntpd default

RUN mkdir /etc/ntpd
COPY ntpd.conf /etc/ntpd/

CMD /usr/sbin/ntpd -d -f /etc/ntpd/ntpd.conf