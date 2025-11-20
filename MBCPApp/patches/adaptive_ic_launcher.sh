#!/usr/bin/env bash
# PATCHNAME: Adaptive launcher icon
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

confirm "This will override all changes in [Change app icon], are you sure you want to apply?" || exit 69

res="$DIRPATH/mbapk/mbapk_unpacked/resources/package_1/res/"
blob="$DIRPATH/blob_patches/adaptive_ic_launcher/"

cp -r "$blob"/* "$res"

sed -i '0,/type=.font/s|^.*type="font".*|  <public id="0x7f080365" type="drawable" name="ic_launcher_background" />\n  <public id="0x7f080366" type="drawable" name="ic_launcher_foreground" />\n&|' "$res"/values/public.xml
