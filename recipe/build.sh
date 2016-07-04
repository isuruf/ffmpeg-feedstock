#!/bin/bash
export CFLAGS="${CFLAGS} -I${PREFIX}/include"
export CXXFLAGS="${CXXFLAGS} -I${PREFIX}/include"
export LDFLAGS="${LDFLAGS} -L${PREFIX}/lib"
 
./configure \
        --prefix="${PREFIX}" \
        --disable-doc \
        --enable-shared \
        --enable-static \
        --extra-cflags="-Wall -g -m64 -pipe -O3 -march=x86-64 -fPIC" \
        --extra-cxxflags=="-Wall -g -m64 -pipe -O3 -march=x86-64 -fPIC" \
        --enable-pic \
        --enable-gpl \
        --enable-libx264

make
make install
