#!/usr/bin/env bash
# PATCHNAME: Remove useless libraries
# MAXVER:
# MINVER: 68
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

rm -rf 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libtoolChecker.so'
rm -rf 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libtoolChecker.so'

rm -rf 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libvvb2060.so'
rm -rf 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libvvb2060.so'
