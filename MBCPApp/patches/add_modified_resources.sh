#!/usr/bin/env bash
# PATCHNAME: Add modified resources
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

info "Copying modified resources..."
cp -r -f 'blob_patches/resources/raw' 'mbapk/mbapk_unpacked/resources/package_1/res/'
cp -f 'blob_patches/resources/strings-vi/strings.xml' 'mbapk/mbapk_unpacked/resources/package_1/res/values-vi/'
cp -f 'blob_patches/resources/strings/strings.xml' 'mbapk/mbapk_unpacked/resources/package_1/res/values/'
info "Copying bootleg_ekyc..."
cp -f 'blob_patches/bootleg_ekyc/dotp1_ekyc.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/digitalOtp_img_authenguide01.webp'
cp -f 'blob_patches/bootleg_ekyc/dotp2_ekyc.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/digitalOtp_img_authenguide02.webp'
info "Copying ZDefend Fix QR..."
cp -f 'blob_patches/resources/zdefendfix_qrscreen.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/general_illus_warningSecurity.webp'
cp -f 'blob_patches/resources/zdefendfix_qrscreen.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/general_illus_warningSecurity.webp'
