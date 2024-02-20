pkg_name=libxml2
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_description="Libxml2 is the XML C parser and toolkit developed for the Gnome project"
pkg_upstream_url=http://xmlsoft.org/
pkg_origin=core
pkg_version=2.11.5
pkg_license=('MIT')
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_source=https://download.gnome.org/sources/${pkg_name}/2.11/${pkg_name}-${pkg_version}.tar.xz
pkg_shasum=3727b078c360ec69fa869de14bd6f75d7ee8d36987b071e6928d4720a28df3a6
pkg_deps=(core/zlib core/glibc)
pkg_build_deps=(core/coreutils core/make core/gcc core/m4)
pkg_filename=${pkg_name}-${pkg_version}.tar.xz
pkg_lib_dirs=(lib)
pkg_include_dirs=(include)
pkg_bin_dirs=(bin)

do_build() {
  ./configure --prefix="$pkg_prefix" --without-python  --with-zlib="$(pkg_path_for zlib)"
  make
}
