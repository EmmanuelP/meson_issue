#!/bin/sh

set -e

script=`readlink -f $0`
workdir=`dirname ${script}`

rm -rf ${wordir}/install_a
rm -rf ${wordir}/install_b
rm -rf ${wordir}/install_c

cd ${workdir}/project_a
rm -rf build
meson build --prefix=${workdir}/install_a -Dlibdir=lib
cd build
ninja install -v

export PKG_CONFIG_PATH=${workdir}/install_a/lib/pkgconfig

cd ${workdir}/project_b
rm -rf build
meson build --prefix=${workdir}/install_b -Dlibdir=lib
cd build
ninja install -v

export PKG_CONFIG_PATH=${PKG_CONFIG_PATH}:${workdir}/install_b/lib/pkgconfig

cd ${workdir}/project_c
rm -rf build
meson build --prefix=${workdir}/install_c -Dlibdir=lib
cd build
ninja install -v
