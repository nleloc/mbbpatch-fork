#!/usr/bin/env bash
# PATCHNAME: Set targetSdkVersion to 35
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

sed -i 's|targetSdkVersion: 34|targetSdkVersion: 35|g' "$DIRPATH"/mbapk/mbapk_unpacked/apktool.yml
