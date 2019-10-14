FROM lmnetworks/alpine:3.10.2_20191014

LABEL com.powerdns.pdns-recursor.version="4.1.13"
LABEL image_name="lmnetworks/pdns-recursor"
LABEL maintainer="info@lm-net.it"

RUN apk add --no-cache pdns-recursor=4.1.13-r0

COPY recursor.conf /etc/pdns/recursor.conf

EXPOSE 53/tcp
EXPOSE 53/udp

CMD [ "/usr/sbin/pdns_recursor" ]
