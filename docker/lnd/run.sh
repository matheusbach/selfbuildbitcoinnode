#!/bin/sh

if ! command -v lnd --help &> /dev/null
then
    /source_update.sh
    /build.sh
fi

# aguarda 60 segundos para esperar o bitcoincore estar rodando
sleep 120

# aguarda até a porta RPC do bitcoind estar aberta
while ! nc -z bitcoin 8332; do   
  sleep 1
done

stop_sigint() {
    echo SIGINT received
    kill -INT "$running_process" 2> /dev/null
}

trap stop_sigint SIGINT

lnd $@ &
running_process=$!

wait "$running_process" > /dev/null

while kill -0 $running_process >/dev/null 2>&1
do
    sleep 1
done

echo process terminated