#!/usr/bin/env bash
# PATCHNAME: Force portrait screen
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh
sed -i 's|fullSensor|portrait|g' "$DIRPATH"/mbapk/mbapk_unpacked/AndroidManifest.xml
