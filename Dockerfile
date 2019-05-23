FROM lmnetworks/alpine:3.9.4_20190523

LABEL org.alpine.version="3.9.4"
LABEL image_name="lmnetworks/pdns-recursor"
LABEL maintainer="info@lm-net.it"

RUN apk add --no-cache pdns-recursor=4.1.9-r1

COPY recursor.conf /etc/pdns/recursor.conf

EXPOSE 53/tcp
EXPOSE 53/udp

CMD "/usr/sbin/pdns_recursor"
