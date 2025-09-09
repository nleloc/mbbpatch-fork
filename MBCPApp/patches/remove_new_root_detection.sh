#!/usr/bin/env bash
# PATCHNAME: Remove new root detection
# MAXVER: 59
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

info 'Removing [libZDefend.so]...'
rm -f 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libZDefend.so'
rm -f 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libZDefend.so'
info 'Removing [libvvb2060.so]...'
rm -f 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libvvb2060.so'
rm -f 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libvvb2060.so'
info 'Removing [libtoolChecker.so]...'
rm -f 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libtoolChecker.so'
rm -f 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libtoolChecker.so'
info 'Removing [libdesignersactivists.so]...'
rm -f 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libdesignersactivists.so'
rm -f 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libdesignersactivists.so'

info 'Removing related files...'
rm -rf 'mbapk/mbapk_unpacked/root/assets/zfiles'
rm -f 'mbapk/mbapk_unpacked/root/assets/dlangV5.dat'
rm -f 'mbapk/mbapk_unpacked/root/assets/dlangV5.en.dat'
rm -f 'mbapk/mbapk_unpacked/root/assets/policy0'
rm -f 'mbapk/mbapk_unpacked/root/assets/policy1'
rm -f 'mbapk/mbapk_unpacked/root/assets/policy2'
rm -f 'mbapk/mbapk_unpacked/root/assets/policy3'
rm -f 'mbapk/mbapk_unpacked/root/assets/policy4'
rm -f 'mbapk/mbapk_unpacked/root/assets/policy5'
rm -f 'mbapk/mbapk_unpacked/root/assets/policy6'
rm -f 'mbapk/mbapk_unpacked/root/assets/policy8'
rm -f 'mbapk/mbapk_unpacked/root/assets/policy9'
rm -f 'mbapk/mbapk_unpacked/root/assets/policym'
rm -f 'mbapk/mbapk_unpacked/root/assets/rulesV5.dat'
rm -rf 'mbapk/mbapk_unpacked/smali/androidx/UnderlyingVcl'
rm -f 'mbapk/mbapk_unpacked/smali/androidx/UnderlyingVcl.smali'
manifest_remove 'android:authorities="com.mbmobile.honor.essence.enter'
manifest_remove 'android:authorities="com.mbmobile.inserted.thumbzilla.ireland'
