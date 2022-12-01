#!/bin/sh

cd /src/bitcoin

./autogen.sh
./configure --with-incompatible-bdb --with-gui=no --disable-wallet
make
make install