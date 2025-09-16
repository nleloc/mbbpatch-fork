#!/usr/bin/env bash
# PATCHNAME: Remove app from launcher
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

confirm "Are you sure you want to apply this patch?" || exit 69

sed -i 's|<category android:name="android.intent.category.LAUNCHER"/>||g' "$DIRPATH"/mbapk/mbapk_unpacked/AndroidManifest.xml
