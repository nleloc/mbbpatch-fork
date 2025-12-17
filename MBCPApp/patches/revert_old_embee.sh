#!/usr/bin/env bash
# PATCHNAME: Revert old eMBee logo
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

info "Copying old eMBee logo..."
cp -f 'blob_patches/revert_old_eMBee/customerService_img_avatarChat.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
cp -f 'blob_patches/revert_old_eMBee/customerService_img_avatarChat01.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
cp -f 'blob_patches/revert_old_eMBee/customerService_img_avatarChat02.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
cp -f 'blob_patches/revert_old_eMBee/customerService_img_avatarChat03.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
cp -f 'blob_patches/revert_old_eMBee/customerService_img_avatarChat04.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
cp -f 'blob_patches/revert_old_eMBee/eMBee_img_headerNew.private.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
cp -f 'blob_patches/revert_old_eMBee/eMBee_img_headerNew.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
cp -f 'blob_patches/revert_old_eMBee/eMBee_img_loginSupport.private.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
cp -f 'blob_patches/revert_old_eMBee/eMBee_img_loginSupport.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'

# Priority exclusive
cp -f 'blob_patches/revert_old_eMBee/eMBee_img_headerNew.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority'
cp -f 'blob_patches/revert_old_eMBee/eMBee_img_loginSupport.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority'

# Restore old eMBee account profile picture (present before on MB React Native)
cp -f 'blob_patches/revert_old_eMBee/homeLanding_img_avatarDefault.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
cp -f 'blob_patches/revert_old_eMBee/homeLanding_img_avatarDefault.private.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
cp -f 'blob_patches/revert_old_eMBee/homeLanding_img_avatarDefault.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority'
# Replace MB Junior avatars
cp -f 'blob_patches/revert_old_eMBee/homeLanding_img_avatarDefault.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/junior_img_avatarBoy.webp'
cp -f 'blob_patches/revert_old_eMBee/homeLanding_img_avatarDefault.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/junior_img_avatarGirl.webp'

# Restore old Bee rich logo
cp -f 'blob_patches/revert_old_eMBee/img_beerich.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/static/base/partner/img_beerich.webp'
cp -f 'blob_patches/revert_old_eMBee/img_beerich.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/static/base/partner/img_wealthCoach.webp'
