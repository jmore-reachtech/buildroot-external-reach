#!/bin/sh

BOARD_DIR="$(dirname $0)"
GENIMAGE_CFG="${BOARD_DIR}/genimage.cfg"
GENIMAGE_TMP="${BUILD_DIR}/genimage.tmp"
APPIMAGE_CFG="${BOARD_DIR}/appimage.cfg"
APPIMAGE_TMP="${BUILD_DIR}/appimage.tmp"

rm -rf "${GENIMAGE_TMP}"
rm -rf "${APPIMAGE_TMP}"

genimage                           \
	--rootpath "${BOARD_DIR}/appfs"     \
	--tmppath "${APPIMAGE_TMP}"    \
	--inputpath "${BINARIES_DIR}"  \
	--outputpath "${BINARIES_DIR}" \
	--config "${APPIMAGE_CFG}"

genimage                           \
	--rootpath "${TARGET_DIR}"     \
	--tmppath "${GENIMAGE_TMP}"    \
	--inputpath "${BINARIES_DIR}"  \
	--outputpath "${BINARIES_DIR}" \
	--config "${GENIMAGE_CFG}"

exit $?
