project('project_a', 'c', version:'1.0')

pkg=import('pkgconfig')

lib=library(meson.project_name(), 'lib_a.c', version:'1.0', install:true)

install_headers(['lib_a.h'])

pkg.generate(lib, name:meson.project_name())
