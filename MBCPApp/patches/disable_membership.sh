#!/usr/bin/env bash
# PATCHNAME: Disable MB Membership
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

warn "This patch will disable the MB Membership function !"
confirm "Are you sure you want to apply this patch?" || exit 69

warn "You won't be able to use any of Membership benefits if you already subscribed to !"

# check if libapp has it's necessary content or not. if not, ignore libapp patching
cat "$DIRPATH"/mbapk/mbapk_unpacked/root/lib/arm64-v8a/libapp.so | grep -a -oH filestatic && disablemembership || warn "Current app version has compressed libapp, skipping libapp!"

disablemembership() {
	sed_libapp 's|get-customer-subs|get-customer-apps|g'
	sed_libapp 's|upsale|saleup|g'
}

# badge removal (below pfp) without libapp patching
rm -f "$DIRPATH"/mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/lottie/sub_badge*.json

rm -f "$DIRPATH"/mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/sub_img_hoSoNguoiDungBasic.webp
rm -f "$DIRPATH"/mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/sub_img_hoSoNguoiDungPlus_.webp
rm -f "$DIRPATH"/mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/sub_img_hoSoNguoiDungPre.webp
rm -f "$DIRPATH"/mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/sub_img_hoSoNguoiDungPro.webp
rm -f "$DIRPATH"/mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/sub_img_goiHoiVien.webp

rm -f "$DIRPATH"/mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/sub_illus_membership.webp
rm -f "$DIRPATH"/mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/sub_img_membership.webp

# Priority exclusive
rm -f "$DIRPATH"/mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/sub_illus_membership.webp
rm -f "$DIRPATH"/mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/sub_img_goiHoiVien.webp

# Private exclusive
rm -f "$DIRPATH"/mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/sub_img_goiHoiVien.private.webp
