FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}: ${THISDIR}/${PN}/${MACHINE}:"

# override the default interfaces config
SRC_URI += "\
          file://interfaces \
          "

PACKAGE_ARCH = "${MACHINE_ARCH}"
