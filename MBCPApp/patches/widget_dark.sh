#!/usr/bin/env bash
# PATCHNAME: Change widget background to dark 
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

echo "Copying dark background..."
cp -f 'blob_patches/widget_dark/bg_4x2.png' 'mbapk/mbapk_unpacked/res/drawable-xxhdpi/'
cp -f 'blob_patches/widget_dark/bg_4x4.png' 'mbapk/mbapk_unpacked/res/drawable-xxhdpi/'
echo "Removing [mbb_home_widget_qr_info.xml]..."
rm -f 'mbapk/mbapk_unpacked/res/xml/mbb_home_widget_qr_info.xml'
echo "Patching [public.xml]..."
sed -i 's|<public type="xml" name="mbb_home_widget_qr_info" id="0x7f15000b" />||g' 'mbapk/mbapk_unpacked/res/values/public.xml'
echo "Patching [AndroidManifest.xml]..."
sed -i 's|<meta-data android:name="android.appwidget.provider" android:resource="@xml/mbb_home_widget_qr_info"/>||g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
