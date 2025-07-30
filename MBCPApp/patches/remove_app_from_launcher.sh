#!/usr/bin/env bash
# PATCHNAME: Remove app from launcher
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh
sed -i 's|<category android:name="android.intent.category.LAUNCHER"/>||g' "$DIRPATH"/mbapk/mbapk_unpacked/AndroidManifest.xml
