FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI = "git://github.com/OpenVisionE2/procps.git;protocol=https \
           file://sysctl.conf \
           "
