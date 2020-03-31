#!/bin/sh
echo ""
if [ $# -eq 0 ]
then
	BUILDDIR="build"
else
	BUILDDIR="$1"
fi
RED='\033[0;31m'
NC='\033[0m' # No Color
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[0;33m'
rm -rf meta-cube
rm -rf meta-dream
rm -rf meta-hypercube
rm -rf meta-linkdroid
rm -rf meta-minix
rm -rf meta-odroid
rm -rf meta-raspberrypi
rm -rf meta-wetek
find meta-python2/conf/ -type f -name "layer.conf" | xargs -L1 sed -i 's|LAYERSERIES_COMPAT_meta-python2 = "thud warrior zeus"|LAYERSERIES_COMPAT_meta-python2 = "dunfell"|g'
echo "Open Vision by"
echo "https://github.com/orgs/OpenVisionE2/people"
echo ""
echo "Each time you run this script all git repositories will get updated to their latest versions!"
echo ""
echo -e "${BLUE}Updating from git, please wait ...${NC}"
echo ""
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
cd "${SCRIPTPATH}"
git pull
git submodule sync
git submodule update --init
echo ""
echo -e "${BLUE}Done!${NC}"
echo ""
METAS="$( ls | grep meta- | tr '\n' ' ' | sed 's/ $//g' )"
git pull
# rm -f ${BUILDDIR}/env.source
rm -f ${BUILDDIR}/conf/local.conf
rm -f ${BUILDDIR}/conf/openvision.conf
sed -i "s#BUILD_DIR = \$(CURDIR)/.*#BUILD_DIR = \$(CURDIR)/${BUILDDIR}#g" Makefile
echo ""
echo -e "${BLUE}Done.${NC}"
