FROM alpine:3.16

ENV LND_VERSION_BRANCHTAG_GITHUB v0.15.0-beta

RUN apk add --update alpine-sdk
RUN apk add --no-cache linux-headers bash
RUN apk add --no-cache git
RUN apk add --no-cache go make

ENV GOPATH=/usr/local

ADD ./build.sh /
ADD ./source_update.sh /
ADD ./run.sh /
RUN chmod +x /build.sh /source_update.sh /run.sh

RUN mkdir -p /db /src

ENTRYPOINT [ "/run.sh", "--lnddir=/lnd", "--backupfilepath=/backup/channel.backup"]

# lncli --lnddir=/lnd create --stateless_init --save_to /macarao