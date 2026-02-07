#!/usr/bin/env bash
# PATCHNAME: Remove banners & MiniApp
# MAXVER: 67
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

sed_libapp 's|banner|remove|g'
sed_libapp 's|marketplacehome|removemarketapp|g'

info 'Moving links...'
sed_libapp 's|https://miniappgw.mbbank.com.vn/homebox/webview/auth?|https://git.disroot.org/mbcp/info/wiki/MiniApp?ref=mb|g'
sed_libapp 's|https://miniappgw-uat.mbbank.com.vn/homebox-public/|https://git.disroot.org/mbcp/info/wiki/MiniApp?refs|g'

info 'Removing related resources...'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/packages'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/billing_img_defaultBanner.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/billing_img_defaultBanner.private.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/explore_img_defaultBanner.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/coreBanking_img_successBanner.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/homeLanding_img_defaultBanner.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/homeLanding_img_defaultBanner.private.webp'
# Priority exclusive
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/explore_img_defaultBanner.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/coreBanking_img_successBanner.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/homeLanding_img_defaultBanner.webp'

# Shield related resources
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/khien_img_hoadon.private.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/khien_img_muasam.private.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/khien_img_offline.private.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/khien_img_hoadon.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/khien_img_muasam.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/khien_img_offline.webp'

rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/khien_img_hoadon.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/khien_img_muasam.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/khien_img_offline.webp'

#
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/static/banner_transfer_mass.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/static/banner_transfer_private.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/static/recap_banner.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/static/poster_cyberrisk_noti.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/static/onboarding/ads_banner_borigin.webp'
