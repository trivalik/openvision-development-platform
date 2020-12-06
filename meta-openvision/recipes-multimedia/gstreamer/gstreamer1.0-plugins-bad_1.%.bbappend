FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://004-dvbapi5-fix-old-kernel.patch"

CFLAGS_append_sh4 = " -std=gnu99"
