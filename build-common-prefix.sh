#!/bin/sh

set -e

script=`readlink -f $0`
workdir=`dirname ${script}`

rm -rf ${wordir}/install

export PKG_CONFIG_PATH=${workdir}/install/lib/pkgconfig

cd ${workdir}/project_a
rm -rf build
meson build --prefix=${workdir}/install -Dlibdir=lib
cd build
ninja install -v

cd ${workdir}/project_b
rm -rf build
meson build --prefix=${workdir}/install -Dlibdir=lib
cd build
ninja install -v

cd ${workdir}/project_c
rm -rf build
meson build --prefix=${workdir}/install -Dlibdir=lib
cd build
ninja install -v
