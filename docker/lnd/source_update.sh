#!/bin/sh

git config --global advice.detachedHead false

cd /src

if [ ! -d lnd/.git ]
then
    git clone -n https://github.com/lightningnetwork/lnd.git lnd
fi 

cd lnd

git fetch
git checkout $LND_VERSION_BRANCHTAG_GITHUB