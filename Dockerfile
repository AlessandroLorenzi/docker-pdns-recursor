FROM lmnetworks/alpine:3.9.4_20190523

LABEL org.alpine.version="3.9.4"
LABEL image_name="lmnetworks/pdns-recursor"
LABEL maintainer="info@lm-net.it"

RUN echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories && \
    echo '@edge_community http://dl-cdn.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories && \
    apk add --no-cache boost-context@edge=1.69.0-r4 dns-root-hints@edge=2019031302-r1 pdns-recursor@edge_community=4.1.13-r0

COPY recursor.conf /etc/pdns/recursor.conf

EXPOSE 53/tcp
EXPOSE 53/udp

CMD [ "/usr/sbin/pdns_recursor" ]
