#!/usr/bin/env bash
# PATCHNAME: Modify app theme
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

info "In order to modify app theme, you must extract assets first if current unpacked APK has MBShield!"
PS3='Select themes : '
select opt in 'MBCP SemiPriority' 'MBCP MBClassic' 'Noel 2024' 'Exit'
do
  case "$opt" in
    'MBCP SemiPriority')
      info 'Moving [priority] folder...'
      cp -r 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/priority' 'blob_patches/semipriority/'
      info 'Modifying QR background...'
      cp 'blob_patches/semipriority/priority/a_background_image.webp' 'blob_patches/semipriority/priority/qr_img_ThemeDefalut.webp'
      info 'Copying to [flutter_assets/assets/images/dynamic/base]'
      cp -r -f 'blob_patches/semipriority/priority/*' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base' 
      info 'Copying [ic_logo_mb_text.svg]...'
      cp -f 'blob_patches/semipriority/ic_logo_mb_text.svg' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/svgs/'
      info 'Copying [welcom_img_eMbee.webp]...'
      cp -f 'blob_patches/semipriority/welcom_img_eMbee.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      info 'Cleaning...'
      rm -rf 'blob_patches/semipriority/priority'
      patch_finish "semipriority_theme"
      good "Applied [MBCP SemiPriority] theme."
    ;;
    'MBCP MBClassic')
      info "Ensure that SemiPriority theme is not applied before this !"
      info "Otherwise it will have like mixed SemiPriority and MB Classic theme, You've been warned !!! "
      cp -f 'blob_patches/mbclassic/a_background_image.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/mbclassic/general_bg_screenshot.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/mbclassic/homeLanding_bg_main.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/mbclassic/loading_bg_main.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/mbclassic/login_bg_main.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/mbclassic/qr_img_ThemeDefalut.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenLoginClassic.png|https://gitlab.com/-/project/56341767/uploads/f585b28f88876db211f116d1d622031d/mbcp_login.png?git1|g'
      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenLoginClassic.png|https://gitlab.com/-/project/56341767/uploads/f585b28f88876db211f116d1d622031d/mbcp_login.png?git1|g'
      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_thumbnailClassic.png|https://gitlab.com/-/project/56341767/uploads/ba4f0923a4956ba379868e01c55e9cfb/thumb.png?aaaaaaa|g' 
      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_thumbnailClassic.png|https://gitlab.com/-/project/56341767/uploads/ba4f0923a4956ba379868e01c55e9cfb/thumb.png?aaaaaaa|g'
      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenHomeClassic.png|https://gitlab.com/-/project/56341767/uploads/1d7fcf300167e87440220a6f0d28b8c1/mbcp_lobby.png?aaa|g'
      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenHomeClassic.png|https://gitlab.com/-/project/56341767/uploads/1d7fcf300167e87440220a6f0d28b8c1/mbcp_lobby.png?aaa|g' 
      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenSuccessClassic.png|https://gitlab.com/-/project/56341767/uploads/d94e257eb6cf59865016a939541c32fc/mbcp_transfer.png?aaa|g' 
      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenSuccessClassic.png|https://gitlab.com/-/project/56341767/uploads/d94e257eb6cf59865016a939541c32fc/mbcp_transfer.png?aaa|g'
      patch_finish "mbclassic_theme"
      good 'Applied [MBCP MBClassic] theme.'
    ;;
    'Noel 2024')
      info "Ensure that SemiPriority theme is not applied before this !"
      info "Otherwise it will have like mixed SemiPriority and MB Classic theme, You've been warned !!! "
      cp -f 'blob_patches/noel/a_background_image.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/bill_background_gold.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/coreBanking_img_successBackground.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/general_bg_screenshot.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/general_bg_success.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/homeLanding_bg_main.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/loading_bg_main.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/login_bg_main.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/qr_img_ThemeDefalut.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      ##############
      cp -f 'blob_patches/noel/a_background_image.png' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/bill_background_gold.png' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/coreBanking_img_successBackground.png' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/general_bg_screenshot.png' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/general_bg_success.png' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/homeLanding_bg_main.png' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/loading_bg_main.png' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/login_bg_main.png' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/qr_img_ThemeDefalut.png' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      # Change theme preview
      cp -f 'blob_patches/noel/customUI_img_classicMode.png' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/customUI_img_classicMode.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
      # Lockdown ability to change other theme, also force Noel 2024 theme
      sed_libapp 's|theme|Noel |g'
      sed_libapp 's|theme|Noel |g'
      # Settings
      sed_libapp 's|Change Noel |Noel 2024   |g'
      sed_libapp 's|Change Noel |Noel 2024   |g'

      warn "You WON'T be able to use other theme than Noel 2024 on app !"
      good "Applied [Noel 2024] theme."
    ;;
    'Exit') exit ;;
  esac
done
