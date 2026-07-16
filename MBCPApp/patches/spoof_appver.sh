#!/usr/bin/env bash
# PATCHNAME: Spoof app version
# MAXVER:
# MINVER: 6.4.47
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

# Version flag
# [old] flag is used for discontinued version from MB
# [legacy] flag is used for older app version, but not discontinued from MB
# [mbcp] is the most recent active version.

info "Spoofing app version..."
MANIFEST="mbapk/mbapk_unpacked/AndroidManifest.xml"
# v6.5.1x (nmbcp)
sed -E -i 's/\b(6\.5\.1[0-9])\b/\1.nmbcp/g' "$MANIFEST"

# v6.5.x (nmbcp)
sed -E -i 's/\b(6\.5\.[0-9])\b/\1.nmbcp/g' "$MANIFEST"

# v6.4.9x (legacy)
sed -E -i 's/\b(6\.4\.9[2-9])\b/\1.legacy/g' "$MANIFEST"

# v6.4. 47 - 92 (old) (no older than v6.4.47 due to the open source codebase started with v6.4.47)
sed -E -i 's/\b(6\.4\.(4[7-9]|[5-8][0-9]|9[0-2]))\b/\1.old/g' "$MANIFEST"

# versionCode spoofing to prevent in-app forced update dialog, and play store / aurora store from replacing with original app :>
sed -E -i 's/android:versionCode="[0-9]+"/android:versionCode="213100"/g' "$MANIFEST"
# you can change '213100' to whatever you want, i just like 213100 :D
