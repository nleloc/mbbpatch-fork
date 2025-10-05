#!/usr/bin/env bash
# PATCHNAME: Spoof app version to 698
# MAXVER: 67
# MINVER: 
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

info "Spoofing app version..."
sed -i 's|v6.4.66|v6.4.68|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|v6.4.65|v6.4.68|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|v6.4.64|v6.4.68|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|692|698|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|691|698|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|689|698|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'

