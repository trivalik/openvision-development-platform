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

do_install() {
    install -d ${D}${sysconfdir}/udev/rules.d

    install -m 0644 ${WORKDIR}/automount.rules     ${D}${sysconfdir}/udev/rules.d/automount.rules
    install -m 0644 ${WORKDIR}/autonet.rules       ${D}${sysconfdir}/udev/rules.d/autonet.rules
    install -m 0644 ${WORKDIR}/localextra.rules    ${D}${sysconfdir}/udev/rules.d/localextra.rules

    install -d ${D}${sysconfdir}/udev/mount.blacklist.d
    install -m 0644 ${WORKDIR}/mount.blacklist     ${D}${sysconfdir}/udev/

    install -d ${D}${sysconfdir}/udev/scripts/

    install -m 0755 ${WORKDIR}/mount.sh ${D}${sysconfdir}/udev/scripts/mount.sh
    install -m 0755 ${WORKDIR}/network.sh ${D}${sysconfdir}/udev/scripts
}
