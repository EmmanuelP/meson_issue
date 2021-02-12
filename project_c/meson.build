project('project_c', 'c', version:'1.0')

pkg=import('pkgconfig')

deps = [dependency('project_b')]

lib=library(meson.project_name(), 'lib_c.c', dependencies:deps, version:'1.0', install:true)

lib_dep = declare_dependency(dependencies: deps, link_with: lib)

executable('project_c', 'main.c', dependencies:lib_dep, install: true)

pkg.generate(lib, name:meson.project_name())
