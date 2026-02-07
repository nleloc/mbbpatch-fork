#!/usr/bin/env bash
# PATCHNAME: Disable MB Membership
# MAXVER: 67
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

warn "This patch will disable the MB Membership function !"
confirm "Are you sure you want to apply this patch?" || exit 69

warn "You won't be able to use any of Membership benefits if you already subscribed to !"

sed_libapp 's|get-customer-subs|get-customer-apps|g'
sed_libapp 's|upsale|saleup|g'

rm -f "mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/sub_img_hoSoNguoiDungBasic.webp"
rm -f "mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/sub_img_hoSoNguoiDungPlus_.webp"
rm -f "mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/sub_img_hoSoNguoiDungPre.webp"
rm -f "mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/sub_img_hoSoNguoiDungPro.webp"
rm -f "mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/sub_img_goiHoiVien.webp"

rm -f "mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/sub_illus_membership.webp"
rm -f "mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/sub_img_membership.webp"

# Priority exclusive
rm -f "mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/sub_illus_membership.webp"
rm -f "mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/sub_img_goiHoiVien.webp"

# Private exclusive
rm -f "mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/sub_img_goiHoiVien.private.webp"
