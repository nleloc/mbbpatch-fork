#!/usr/bin/env bash
# PATCHNAME: Remove protection shield
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

confirm "Are you sure you want to apply this patch?" || exit 69

sed_libapp 's|get-protective-cyber-risk|get_protective_cyber_none|g'
sed_libapp 's|Activate for Protection|Protection are disabled|g'
info "Removing resources..."
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/shield_img_pending.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/shield_img_actived.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/shield_img_empty.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/shield_illus_pending.webp'

rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/khien_img_hoadon.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/khien_img_muasam.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/khien_img_offline.webp'

# Private exclusive
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/khien_img_hoadon.private.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/khien_img_muasam.private.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/khien_img_offline.private.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/shield_illus_pending.private.webp'

rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/shield_img_pending.private.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/shield_img_actived.private.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/shield_img_empty.private.webp'

# Priority exclusive
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/shield_img_pending.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/shield_img_empty.webp'

info "NOTE : This doesn't remove the app protection shield, it just disable and remove the MB Protection Shield, which literally is the MIC Shield !"
