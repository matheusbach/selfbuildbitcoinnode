#!/bin/sh

git config --global advice.detachedHead false

cd /src

if [ ! -d btcrpcexplorer/.git ]
then
    git clone -n https://github.com/janoside/btc-rpc-explorer.git btcrpcexplorer
fi 

cd btcrpcexplorer

git fetch
git checkout $BTCRPCEXPLORER_VERSION_BRANCHTAG_GITHUB