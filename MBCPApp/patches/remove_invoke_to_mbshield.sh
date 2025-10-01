#!/usr/bin/env bash
# PATCHNAME: Remove invoke to mbshield
# MAXVER: 67
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

warn "Currently only support remove invoke mbshield to [io.flutter.plugins.MainActivity] and [MBBHomeWidgetQR] !!!"
info "Copying..."
rm -f 'mbapk/mbapk_unpacked/smali/classes4/io/flutter/plugins/MainAcitivity.smali'
rm -f 'mbapk/mbapk_unpacked/smali/classes4/io/flutter/plugins/MBBHomeWidgetQR.smali'
cp -f 'blob_patches/noinvoke/MainActivity.smali' 'mbapk/mbapk_unpacked/smali/classes4/io/flutter/plugins'
cp -f 'blob_patches/noinvoke/MBBHomeWidgetQR.smali' 'mbapk/mbapk_unpacked/smali/classes4/io/flutter/plugins'
info "Removing leftover files..."
for i in {0..83}; do
   case $i in
       *) rm -f "mbapk/mbapk_unpacked/smali/classes5/mbshield/EP$i.smali" ;;
   esac
done
