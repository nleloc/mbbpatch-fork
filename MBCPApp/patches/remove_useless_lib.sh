#!/usr/bin/env bash
# PATCHNAME: Remove useless libraries
# MAXVER:
# MINVER: 6.4.68
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

# remove libvvb2060.so (only for older app verion : v6.5.6 or older)
# in newer app, removing it will trigger checksum failing error (GW934 - Re-install app to continue using app)
[ ! -f 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libcode.so' ] && rm -rf 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libvvb2060.so'
[ ! -f 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libcode.so' ] && rm -rf 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libvvb2060.so'

# remove rootbeer simple check (used in singalarity ekyc)
rm -rf 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libtoolChecker.so'
rm -rf 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libtoolChecker.so'
