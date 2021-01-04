FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "\
	file://mount.sh \
	file://automount.rules \
	file://localextra.rules \
	"
