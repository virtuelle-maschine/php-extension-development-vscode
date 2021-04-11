#! /bin/bash
set -eux
cd /usr/src/ext-dev
if [ -f "/usr/src/ext-dev/Makefile" ]; then
  make clean
fi
phpize
./configure
make
make install
make test TESTS=./tests 
