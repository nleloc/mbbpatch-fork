#!/usr/bin/env bash
# PATCHNAME: Restore old 682 lib 
# MAXVER: 63
# MINVER: 61
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

mkdir old682
echo "Downloading v6.4.61 apks..."
wget https://github.com/kongu2k8-svg/mbapk/releases/download/mb/embee_v6.4.61_682_arm64-v8a_armeabi-v7a.apks -q --show-progress
mv *.apks old682/
echo "Unpacking..."
java -jar tools/apkeditor.jar m -i old682/*.apks 
java -jar tools/apktool.jar d old682/*.apk -o old682/unpacked -j$(nproc)
mv old682/unpacked/lib/arm64-v8a/libapp.so mbapk/mbapk_unpacked/lib/arm64-v8a/ 
mv old682/unpacked/lib/armeabi-v7a/libapp.so mbapk/mbapk_unpacked/lib/armeabi-v7a/ 
mv old682/unpacked/lib/arm64-v8a/libflutter.so mbapk/mbapk_unpacked/lib/arm64-v8a/ 
mv old682/unpacked/lib/armeabi-v7a/libflutter.so mbapk/mbapk_unpacked/lib/armeabi-v7a/   
echo "Cleaning..."   
rm -rf old682
echo "WARNING : Any changes to [libapp.so] like Autopatch strings are reverted, please apply again if you want to !"

