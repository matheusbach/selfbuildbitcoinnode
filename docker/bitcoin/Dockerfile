FROM alpine

ENV BITCOIN_VERSION_BRANCHTAG_GITHUB v23.0

RUN apk add --update alpine-sdk
RUN apk add --no-cache gcc git libffi musl-dev libffi-dev autoconf automake
RUN apk add --no-cache openssh-client make db-dev openssl openssl-dev
RUN apk add --no-cache boost boost-dev libtool libevent libevent-dev
RUN apk add --no-cache sqlite-dev

RUN apk add nmap

ADD ./build.sh /
ADD ./source_update.sh /
ADD ./run.sh /
RUN chmod +x /build.sh /source_update.sh /run.sh

RUN mkdir -p /bitcoindata /src

ENTRYPOINT [ "/run.sh", "-conf=/bitcoin.conf", "-datadir=/bitcoindata" ]