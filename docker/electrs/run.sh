#!/bin/sh

if ! command -v electrs --help &> /dev/null
then
    /source_update.sh
    /build.sh
fi

# aguarda até a porta RPC do bitcoind estar aberta
while ! nc -z bitcoin 8332; do   
  sleep 1
done

stop_sigint() {
    echo SIGINT received
    kill -INT "$running_process" 2> /dev/null
}

trap stop_sigint SIGINT

electrs $@ &
running_process=$!

wait "$running_process" > /dev/null

while kill -0 $running_process >/dev/null 2>&1
do
    sleep 1
done

echo process terminated