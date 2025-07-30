#!/usr/bin/env bash
# PATCHNAME: Remove eMBee
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

warn "Remove eMBee also remove customer support and any other options on eMBee Helper !"
info "Removing eMBee Customer support function..."
sed_libapp 's|group_button_support|itsnotworthittouseem|g'
sed_libapp 's|Customer support|                |g'

info "Removing assets..."
rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/eMBee_img_page.webp'
rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/eMBee_img_header.webp'
rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/eMBee_img_login.webp'
# Priority support
rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/priority/eMBee_img_page.webp'
rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/priority/eMBee_img_header.webp'
rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/priority/eMBee_img_login.webp'   
# Private support  
rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/eMBee_img_page.private.webp'
rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/eMBee_img_login.private.webp'
rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/eMBee_img_header.private.webp'

# Adapt for v6.4.53+
rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/eMBee_img_headerNew.private.webp'
rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/eMBee_img_headerNew.webp'
# Private support
rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/eMBee_img_loginSupport.private.webp'
rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/eMBee_img_loginSupport.webp'
# Priority support 
rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/priority/eMBee_img_headerNew.webp'
rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/priority/eMBee_img_loginSupport.webp'
