#!/bin/sh

cd /src/tor

./autogen.sh
./configure --disable-asciidoc
make
make install