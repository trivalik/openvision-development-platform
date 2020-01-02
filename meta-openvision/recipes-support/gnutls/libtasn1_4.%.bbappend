FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

CFLAGS_append_sh4 += " -std=c99"
