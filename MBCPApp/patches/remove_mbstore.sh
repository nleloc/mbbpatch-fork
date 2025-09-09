#!/usr/bin/env bash
# PATCHNAME: Remove MB Themes Store
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

warn "You won't be able to access MB Store Themes in the change theme section on the app !"
info "Theme installation like specific theme modules that redirect to MB Store Themes will still work!"

info "Removing MB Store Themes banner..."
rm -f "mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/theme_bg_cuaHang.webp"
rm -f "mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/theme_bg_cuaHang.private.webp"
rm -f "mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/theme_img_cuaHang.private.webp"
rm -f "mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/theme_img_cuaHang.webp"
rm -f "mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/theme_img_headerCuaHang.webp"
rm -f "mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/theme_img_headerCuaHang.private.webp"

# Priority exclusive
rm -f "mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/theme_bg_cuaHang.webp"
rm -f "mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/theme_img_cuaHang.webp"
rm -f "mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/theme_img_headerCuaHang.webp"
