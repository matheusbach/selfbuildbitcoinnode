FROM alpine:3.16

ENV BTCRPCEXPLORER_VERSION_BRANCHTAG_GITHUB v3.3.0

RUN apk add --update alpine-sdk
RUN apk add --no-cache linux-headers bash
RUN apk add --no-cache npm nodejs python3

ADD ./build.sh /
ADD ./source_update.sh /
ADD ./run.sh /
RUN chmod +x /build.sh /source_update.sh /run.sh

RUN mkdir -p /db /src

ENTRYPOINT [ "/run.sh", "--host=0.0.0.0", "--port=3002", "--basic-auth-password=", "--slow-device-mode=false", "--bitcoind-host=bitcoin", "--bitcoind-port=8332", "--bitcoind-cookie=/bitcoindata/.cookie", "--no-rates", "--privacy-mode"]