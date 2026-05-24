#!/usr/bin/env bash
# PATCHNAME: Add modified resources
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

nochiptext() {
	warn "App newer than v6.5.2+ ! Removing some conflict strings..."
	mkdir -p strings_temp
	cp -f 'blob_patches/resources/strings/strings.xml' 'strings_temp/strings.xml'
	cp -f 'strings_temp/strings.xml' 'mbapk/mbapk_unpacked/resources/package_1/res/values/strings.xml'
	sed -i 's|<string name="chip_text">Chip text</string>||g' 'mbapk/mbapk_unpacked/resources/package_1/res/values/strings.xml'
	sed -i 's|<string name="label">Label</string>||g' 'mbapk/mbapk_unpacked/resources/package_1/res/values/strings.xml'
	rm -rf strings_temp
}

info "Copying modified resources..."

cp -r -f 'blob_patches/resources/raw' 'mbapk/mbapk_unpacked/resources/package_1/res/'
cp -f 'blob_patches/resources/strings-vi/strings.xml' 'mbapk/mbapk_unpacked/resources/package_1/res/values-vi/'
[ $(cat mbapk/mbapk_unpacked/resources/package_1/res/values/strings.xml | grep chip_text) ] && cp -f 'blob_patches/resources/strings/strings.xml' 'mbapk/mbapk_unpacked/resources/package_1/res/values/' || nochiptext
info "Copying bootleg_ekyc..."
cp -f 'blob_patches/bootleg_ekyc/dotp1_ekyc.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/digitalOtp_img_authenguide01.webp'
cp -f 'blob_patches/bootleg_ekyc/dotp2_ekyc.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/digitalOtp_img_authenguide02.webp'
info "Copying ZDefend Fix QR..."
cp -f 'blob_patches/resources/zdefendfix_qrscreen.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/general_illus_warningSecurity.webp'
cp -f 'blob_patches/resources/zdefendfix_qrscreen.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/general_illus_warningSecurity.webp'


