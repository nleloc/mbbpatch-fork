#!/usr/bin/env bash
# PATCHNAME: Change widget background to dark 
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

info "Copying dark background..."
cp -f 'blob_patches/widget_dark/bg_4x2.png' 'mbapk/mbapk_unpacked/resources/package_1/res/drawable-xxhdpi/'
cp -f 'blob_patches/widget_dark/bg_4x4.png' 'mbapk/mbapk_unpacked/resources/package_1/res/drawable-xxhdpi/'
info "Removing [mbb_home_widget_qr_info.xml]..."
rm -f 'mbapk/mbapk_unpacked/res/xml/mbb_home_widget_qr_info.xml'
info "Patching [public.xml]..."
sed -i 's|<public type="xml" name="mbb_home_widget_qr_info" id="0x7f15000b" />||g' 'mbapk/mbapk_unpacked/resources/package_1/res/values/public.xml'
info "Patching [AndroidManifest.xml]..."
sed -i 's|<meta-data android:name="android.appwidget.provider" android:resource="@xml/mbb_home_widget_qr_info"/>||g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
info "Copying fixed widget files..."
cp -f 'blob_patches/widget_dark/mbb_home_widget_4x4_all.xml' 'mbapk/mbapk_unpacked/resources/package_1/res/layout/'
cp -f 'blob_patches/widget_dark/arrow.xml' 'mbapk/mbapk_unpacked/resources/package_1/res/drawable/'
