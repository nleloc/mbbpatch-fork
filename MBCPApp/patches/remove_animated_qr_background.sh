#!/usr/bin/env bash
# PATCHNAME: Remove animated QR background
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

info "This will remove animated QR on bottom navigation bar and replace with white background !"
info "Removing animated QR..."
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/static/homeLanding_bg_qrCode.gif'
# Adapt with v6.4.77+
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/static/homeLanding_bg_qrCode.webp'

info "Copying new static white background..."
cp -f 'blob_patches/qr_white/homeLanding_bg_qrCode.gif' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/static'
# Adapt with v6.4.77+
cp -f 'blob_patches/qr_white/homeLanding_bg_qrCode.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/static'
# Unknown homeLanding_bg_qrCode
cp -f 'blob_patches/qr_white/homeLanding_bg_qrCode.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/homeLanding_bg_qrCode.webp'

