#!/usr/bin/env bash
# PATCHNAME: Custom sub-badge 
# MAXVER:
# MINVER: 6.4.42
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

info "Currently only support for [Basic] member badge."
info "Plus, Pro, Premium support is planned."

info "Applying files..."
cp -f "$DIRPATH"/blob_patches/custom_subbadge/basic/sub_badge_1.json "$DIRPATH"/mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/lottie/
cp -f "$DIRPATH"/blob_patches/custom_subbadge/basic/sub_badge_2.json "$DIRPATH"/mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/lottie/
info "Adding necessary files..."
cp -r -f "$DIRPATH"/blob_patches/custom_subbadge/resources/gif "$DIRPATH"/mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/gif
cp -f "$DIRPATH"/blob_patches/custom_subbadge/resources/lottie/arrow.json "$DIRPATH"/mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/lottie/
cp -f "$DIRPATH"/blob_patches/custom_subbadge/resources/lottie/identification_loading.json "$DIRPATH"/mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/lottie/
cp -f "$DIRPATH"/blob_patches/custom_subbadge/resources/lottie/logo_star.json "$DIRPATH"/mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/lottie/
cp -f "$DIRPATH"/blob_patches/custom_subbadge/resources/lottie/money_bag.json "$DIRPATH"/mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/lottie/
#[ ! -f mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/lottie/qr_bg_metro.json ] && info "skipping metro" || cp -f "$DIRPATH"/blob_patches/custom_subbadge/resources/qr_bg_metro.json "$DIRPATH"/mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/lottie/ 
