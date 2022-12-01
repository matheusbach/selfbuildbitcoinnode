#!/bin/sh

git config --global advice.detachedHead false

cd /src

if [ ! -d electrs/.git ]
then
    git clone -n https://github.com/romanz/electrs.git electrs
fi 

cd electrs

git fetch
git checkout $ELECTRS_VERSION_BRANCHTAG_GITHUB