#!/usr/bin/env bash
# PATCHNAME: Spoof app version to v6.4.68
# MAXVER: 65
# MINVER: 
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

info "Spoofing app version..."
sed -i 's|v6.4.66|v6.4.68|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|696|698|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'

