#!/usr/bin/env bash
# PATCHNAME: Set targetSdkVersion to 36
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

sed -i 's|android:targetSdkVersion="35"|android:targetSdkVersion="36"|g' "$DIRPATH"/mbapk/mbapk_unpacked/AndroidManifest.xml
