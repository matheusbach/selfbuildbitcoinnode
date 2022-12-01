#!/bin/sh

cd /src/electrs

ROCKSDB_INCLUDE_DIR=/usr/include
ROCKSDB_LIB_DIR=/usr/lib

cargo build --locked --all-features --all-targets --bins --release --target-dir=./target

mkdir -p /usr/local/bin/
cp -f ./target/release/electrs /usr/local/bin/