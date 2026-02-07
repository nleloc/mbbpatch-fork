#!/usr/bin/env bash
# PATCHNAME: Better custom background screen
# MAXVER:
# MINVER: 6.4.83
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

info "Copying..."
cp -f 'blob_patches/better_custombgscreen/customize_img_changeImageContent.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/customize_img_changeImageContent.webp'
cp -f 'blob_patches/better_custombgscreen/customize_img_changeImageContent.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/customize_img_changeImageContent_2.webp'

rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/customize_img_changeImageBG.webp'
