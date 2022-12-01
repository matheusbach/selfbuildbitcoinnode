#!/bin/sh

cd /src/btcrpcexplorer

npm set prefix /usr/local
npm audit fix
npm install -g