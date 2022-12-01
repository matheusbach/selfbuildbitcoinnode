#!/bin/sh

git config --global advice.detachedHead false

cd /src

if [ ! -d tor/.git ]
then
    git clone -n https://github.com/torproject/tor.git tor
fi 

cd tor

git fetch
git checkout $TOR_VERSION_BRANCHTAG_GITHUB