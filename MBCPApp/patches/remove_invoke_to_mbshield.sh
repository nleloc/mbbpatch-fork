#!/usr/bin/env bash
# PATCHNAME: Remove invoke to mbshield
# MAXVER:  
# MINVER: 21
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

warn "Currently only support remove invoke mbshield to [io.flutter.plugins.MainActivity] and [MBBHomeWidgetQR] !!!"
info "Copying..."
if [[ -f mbapk/mbapk_unpacked/smali/classes4/io/flutter/plugins/MainActivity.smali ]]; then
	info "Flutter found on classes4 !!"
	rm -f 'mbapk/mbapk_unpacked/smali/classes4/io/flutter/plugins/MainAcitivity.smali'
	rm -f 'mbapk/mbapk_unpacked/smali/classes4/io/flutter/plugins/MBBHomeWidgetQR.smali'
	cp -f 'blob_patches/noinvoke/MainActivity.smali' 'mbapk/mbapk_unpacked/smali/classes4/io/flutter/plugins'
	cp -f 'blob_patches/noinvoke/MBBHomeWidgetQR.smali' 'mbapk/mbapk_unpacked/smali/classes4/io/flutter/plugins'
	for i in {0..83}; do
   case $i in
       *) rm -f "mbapk/mbapk_unpacked/smali/classes5/mbshield/EP$i.smali" ;;
   esac
done
else
	warn "Flutter not found on classes4, ignoring..."
fi
	
	# Newer dex location (found on v6.4.82+, might present since v6.4.70+)
if [[ -f mbapk/mbapk_unpacked/smali/classes3/io/flutter/plugins/MainActivity.smali ]]; then
	info "Flutter found on classes3 !!"
	rm -f 'mbapk/mbapk_unpacked/smali/classes3/io/flutter/plugins/MainAcitivity.smali'
	rm -f 'mbapk/mbapk_unpacked/smali/classes3/io/flutter/plugins/MBBHomeWidgetQR.smali'
	cp -f 'blob_patches/noinvoke/MainActivity.smali' 'mbapk/mbapk_unpacked/smali/classes3/io/flutter/plugins'
	cp -f 'blob_patches/noinvoke/MBBHomeWidgetQR.smali' 'mbapk/mbapk_unpacked/smali/classes3/io/flutter/plugins'
else
	err "Couldn't find Flutter on both classes3 & classes4! Aborting..."
fi

	info "Removing leftover files..."
# This is moved to classes4 but EP*.smali no longer exist since v6.4.70+

