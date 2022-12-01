FROM alpine

ENV TOR_VERSION_BRANCHTAG_GITHUB tor-0.4.7.8
#USER root

RUN apk add --update alpine-sdk
RUN apk add --no-cache linux-headers bash
RUN apk add --no-cache git automake make g++ autoconf automake
RUN apk add --no-cache libevent-dev libressl-dev zlib-dev openssl openssl-dev

RUN apk add nmap

ADD ./build.sh /
ADD ./source_update.sh /
ADD ./run.sh /
RUN chmod +x /build.sh /source_update.sh /run.sh

RUN mkdir -p /tordata /src

ENTRYPOINT [ "/run.sh" ]