project('project_a', 'c')

pkg=import('pkgconfig')

lib=library(meson.project_name(), 'lib_a.c', install:true)

install_headers(['lib_a.h'])

pkg.generate(lib, name:meson.project_name())
