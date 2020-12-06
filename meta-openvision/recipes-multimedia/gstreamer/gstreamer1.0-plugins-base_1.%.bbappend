FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0002-subparse-set-need_segment-after-sink-pad-received-GS.patch \
	file://0003-riff-media-added-fourcc-to-all-ffmpeg-mpeg4-video-caps.patch \
	"

CFLAGS_append_sh4 = " -std=gnu99"
