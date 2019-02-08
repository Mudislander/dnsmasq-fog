FROM alpine:3.9
MAINTAINER Guillem Tanyà <gtanya@opentrends.net>

RUN apk --no-cache add dnsmasq
ADD assets/entry.sh .
CMD sh entry.sh
