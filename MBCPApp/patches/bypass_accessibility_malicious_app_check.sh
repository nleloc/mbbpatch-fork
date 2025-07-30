#!/usr/bin/env bash
# PATCHNAME: Bypass accessibility & malicious apps check
# MAXVER: 55
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

info 'Copying patched [MbbankUtilitiesPlugin]...'
cp -r -f 'blob_patches/bypass_accessibility_applist/com' 'mbapk/mbapk_unpacked/smali_classes3'
manifest_remove 'uses-permission android:name="android.permission.QUERY_ALL_PACKAGES"'
sed_libapp 's|PackageName|packageMBBB|g'
sed_libapp 's|packageName|packageMBBa|g'
