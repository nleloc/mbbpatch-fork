#!/usr/bin/env bash
# PATCHNAME: Set targetSdkVersion to 36
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

sed -i 's|targetSdkVersion: 35|targetSdkVersion: 36|g' "$DIRPATH"/mbapk/mbapk_unpacked/apktool.yml
