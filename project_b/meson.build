project('project_b', 'c')

pkg=import('pkgconfig')

deps = dependency('project_a')

lib=library(meson.project_name(), 'lib_b.c', dependencies: deps, install:true)

install_headers(['lib_b.h'])

pkg.generate(lib, name:meson.project_name())
