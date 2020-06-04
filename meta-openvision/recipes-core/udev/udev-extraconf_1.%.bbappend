FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI = "\
       file://automount.rules \
       file://mount.sh \
       file://mount.blacklist \
       file://autonet.rules \
       file://network.sh \
       file://localextra.rules \
       ${@bb.utils.contains('MACHINE_FEATURES', 'emmc', 'file://0001-blacklist-mmcblk0.patch', '', d)} \
       ${@bb.utils.contains('MACHINE_FEATURES', 'emmc1', 'file://0002-blacklist-mmcblk1.patch', '', d)} \
"
