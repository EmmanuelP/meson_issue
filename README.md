A possible issue in meson.

- 3 projects, each installed in their own prefix.
- project_b library uses privately project_a library
- project_c executable uses project_b library

-> project_c executables compilations, can't find project_a library

Use build.sh to automatically build the 3 projects, with the right PKG_CONFIG_PATH.
