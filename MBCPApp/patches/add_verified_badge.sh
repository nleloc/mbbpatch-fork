#!/usr/bin/env bash
# PATCHNAME: Add verified badge
# MAXVER:
# MINVER: 
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

confirm "This patch will replace MIC protection shield with verified badge, including the unregistered package badge. Are you sure you want to apply?" || exit 169

info "Moving icons..."
# [actived] is typo from MB side.

# Activated MIC protection shield
#
cp -f 'blob_patches/verified_badge/tick-mark.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/shield_img_actived.webp'
# Private users
cp -f 'blob_patches/verified_badge/tick-mark.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/shield_img_actived.private.webp'

# Unactivated MIC protection shield
cp -f 'blob_patches/verified_badge/tick-mark.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/shield_img_pending.webp'
cp -f 'blob_patches/verified_badge/tick-mark.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/shield_img_pending.webp'
# Private users
cp -f 'blob_patches/verified_badge/tick-mark.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/shield_img_pending.private.webp'

# Empty shield (when the expiry date of current protection shield is less than 10 days)
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/shield_img_empty.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/shield_img_empty.webp'
# Private users
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/shield_img_empty.private.webp'

# Processing shield for private users
cp -f 'blob_patches/verified_badge/tick-mark.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/img_shield_processing.webp'

# MIC Protection shield banners
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/khien_img_hoadon.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/khien_img_muasam.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/khien_img_offline.webp'
# Private users
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/khien_img_hoadon.private.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/khien_img_muasam.private.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/khien_img_offline.private.webp'
