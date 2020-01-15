FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "\
		file://hddtemp.db \
"

# Latest hddtemp.db: https://www.guzu.net/linux/hddtemp.db
# Tool to add new devices: https://github.com/noegodinho/ssdadd
