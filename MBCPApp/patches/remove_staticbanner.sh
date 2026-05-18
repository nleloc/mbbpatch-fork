#!/usr/bin/env bash
# PATCHNAME: Remove some static banners
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/billing_img_defaultBanner.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/billing_img_defaultBanner.private.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/explore_img_defaultBanner.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/exploreLanding_img_background.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/homeLanding_img_defaultBanner.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/homeLanding_img_chatGPT.junior.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/homeLanding_img_banner.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/homeLanding_img_defaultBanner.private.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/homeLanding_img_Kosei.junior.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/img_thumbnail_hotdeal5.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/theme_bg_cuaHang.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/theme_bg_cuaHang.private.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/welcom_img_background.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/static/img_background_financial.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/static/background/sub_bg_hoiVien.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/moneyChat_img*.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/background_moneyChat_base.webp'
# metro qr bg
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/lottie/qr_bg_metro.json'
