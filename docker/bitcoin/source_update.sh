#!/bin/sh

git -c advice.detachedHead=false

cd /src

if [ ! -d bitcoin/.git ]
then
    git clone -n https://github.com/bitcoin/bitcoin.git bitcoin
fi 

cd bitcoin

git fetch
git checkout $BITCOIN_VERSION_BRANCHTAG_GITHUB