#!/bin/sh

mkdir build && cd build

cmake ${CMAKE_ARGS} .. \
	 -DCMAKE_INSTALL_PREFIX=$PREFIX \
     -DCMAKE_INSTALL_LIBDIR=lib \
     -DENABLE_DOUBLE_PRECISION:BOOL=ON \
     -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
	  $SRC_DIR

make -j${CPU_COUNT}
make install
