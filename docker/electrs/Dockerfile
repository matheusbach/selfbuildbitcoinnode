FROM alpine:3.16

ENV ELECTRS_VERSION_BRANCHTAG_GITHUB v0.9.8

RUN apk add --update alpine-sdk
RUN apk add --no-cache linux-headers bash
RUN apk add --no-cache clang cmake g++ make automake
RUN apk add --no-cache cargo rust rustfmt

RUN apk add --no-cache nmap libevent


ADD ./build.sh /
ADD ./source_update.sh /
ADD ./run.sh /
RUN chmod +x /build.sh /source_update.sh /run.sh

RUN mkdir -p /db /src

ENTRYPOINT [ "/run.sh", "--log-filters=INFO", "--conf=/config.toml", "--db-dir=/db", "--electrum-rpc-addr=0.0.0.0:50001", "--network=bitcoin", "--cookie-file=/bitcoindata/.cookie", "--daemon-dir=/bitcoindata", "--daemon-rpc-addr=bitcoin:8332", "--daemon-p2p-addr=bitcoin:8333", "--monitoring-addr=0.0.0.0:4224", "--wait-duration-secs=60", "--jsonrpc-timeout-secs=65" ]