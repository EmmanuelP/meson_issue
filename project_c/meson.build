project('project_c', 'c')

pkg=import('pkgconfig')

deps = [dependency('project_a'), dependency('project_b')]

lib=library(meson.project_name(), 'lib_c.c', dependencies: deps, install:true)

pkg.generate(lib, name:meson.project_name())
