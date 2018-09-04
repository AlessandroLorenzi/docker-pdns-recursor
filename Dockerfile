FROM alpine

RUN apk add --no-cache pdns-recursor

COPY recursor.conf /etc/pdns/recursor.conf

EXPOSE 53/tcp
EXPOSE 53/udp

CMD "/usr/sbin/pdns_recursor"
