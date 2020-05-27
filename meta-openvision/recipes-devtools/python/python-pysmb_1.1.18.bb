SUMMARY  = "pysmb is an experimental SMB/CIFS library written in Python"
DESCRIPTION = "pysmb is an experimental SMB/CIFS library written in Python to support file sharing between Windows and Linux machines. It implements the client-side SMB/CIFS protocol which allows your Python application to access and transfer files to/from SMB/CIFS shared folders like your Windows file sharing and Samba folders."
LICENSE = "PD"
LIC_FILES_CHKSUM = "file://LICENSE;md5=f696da4bf6c34ef3b926285a84dfa60c"

inherit setuptools

SRCNAME = "pysmb"
SRC_URI = "https://pypi.python.org/packages/source/p/${SRCNAME}/${SRCNAME}-${PV}.zip"

S = "${WORKDIR}/${SRCNAME}-${PV}"

SRC_URI[md5sum] = "7768bb10d3f9469a9714e9dbad01d207"
SRC_URI[sha256sum] = "91f5fc7c7f2da9370c3b7646c82d33afb42444e26ce211f12e4202d3d24e0787"

include python-package-split.inc
