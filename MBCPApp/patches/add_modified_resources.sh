#!/usr/bin/env bash
# PATCHNAME: Add modified resources
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

info "Copying modified resources..."
cp -r -f 'blob_patches/resources/raw' 'mbapk/mbapk_unpacked/resources/package_1/res/'
cp -f 'blob_patches/resources/strings-vi/strings.xml' 'mbapk/mbapk_unpacked/resources/package_1/res/values-vi/'
cp -f 'blob_patches/resources/strings/strings.xml' 'mbapk/mbapk_unpacked/resources/package_1/res/values/'
