#!/usr/bin/env bash
# PATCHNAME: Remove animated QR background
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

info "This will remove animated QR on bottom navigation bar and replace with white background !"
info "Removing animated QR..."
rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/static/homeLanding_bg_qrCode.gif' 
info "Copying new static white background..."
mv 'blob_patches/qr_white/150.png' 'blob_patches/qr_white/homeLanding_bg_qrCode.gif' > /dev/null 2>&1
cp -f 'blob_patches/qr_white/homeLanding_bg_qrCode.gif' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/static'
