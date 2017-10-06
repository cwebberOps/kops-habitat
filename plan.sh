pkg_name=kops
pkg_origin=cia
pkg_license=('Apache 2.0')
pkg_maintainer="Christopher Webbers <cwebberops@gmail.com>"
pkg_version="1.7.0"
pkg_source="https://github.com/kubernetes/kops/releases/download/${pkg_version}/kops-linux-amd64"
pkg_build_deps=(core/curl)
pkg_bin_dirs=(bin)

do_begin() {
  return 0
}

do_download() {
    mkdir -p $HAB_CACHE_SRC_PATH/${pkg_dirname}

    cd $HAB_CACHE_SRC_PATH/${pkg_dirname}

    curl -L -o ${pkg_dirname} -s ${pkg_source}
}

do_verify(){
  return 0
}

do_clean(){
  return 0
}

do_unpack() {
  return 0
}

do_prepare() {
  return 0
}

do_build() {
  return 0
}

do_check() {
  return 0
}

do_install() {
  mkdir -p ${pkg_prefix}/bin
  cp ${HAB_CACHE_SRC_PATH}/${pkg_dirname}/${pkg_dirname} ${pkg_prefix}/bin/${pkg_name}
  chmod 0755 ${pkg_prefix}/bin/${pkg_name}
}

do_strip() {
  return 0
}

do_end() {
  return 0
}
