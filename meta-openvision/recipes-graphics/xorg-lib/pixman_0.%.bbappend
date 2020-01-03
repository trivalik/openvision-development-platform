FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_cube += "file://asm_include.patch"
SRC_URI_su980 += "file://asm_include.patch"
