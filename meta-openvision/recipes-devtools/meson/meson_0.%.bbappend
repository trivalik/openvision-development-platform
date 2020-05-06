FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_sh4 += "file://0001-mesonbuild-Recognise-sh4-architecture.patch"
