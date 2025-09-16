#!/usr/bin/env bash
# PATCHNAME: Remove custom profile picture 
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

warn "This will force the default app profile picture instead of the one you already set before on the MB server-side!"
confirm "Are you sure you want to apply this patch?" || exit 69

sed_libapp 's|getPhoto|nonPhoto|g'
sed_libapp 's|savePhoto|nonePhoto|g'

info "In order to force this, you can just remove *.png or *.jpg files from [/data/data/com.mbmobile/cache] where contain your current profile picture, or clear the app data !"
