#!/bin/bash

function build_one
{

PWD='pwd'

cd openssl-1.1.1c

./config shared no-ssl2 no-ssl3 no-comp no-hw no-engine --openssldir=$PWD/../linux/openssl --prefix=$PWD/../linux/openssl

make clean
make depend
make install
cp libssl.so.1.1 $PWD/../linux/openssl/lib/libssl.so
cp libcrypto.so.1.1. $PWD/../linux/openssl/lib/libscrypto.so
}

build_one

