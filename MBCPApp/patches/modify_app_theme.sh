#!/usr/bin/env bash
# PATCHNAME: Modify app theme
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

info "In order to modify app theme, you must extract assets first if current unpacked APK has MBShield!"
PS3='Select themes : '
select opt in 'MBCP SemiPriority' 'MBCP MBClassic' 'Noel 2024' 'Mid-autumn festival' 'Exit'
do
  case "$opt" in
    'MBCP SemiPriority')
      info 'Moving [priority] folder...'
      cp -r 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority' 'blob_patches/semipriority/'
      info 'Modifying QR background...'
      cp 'blob_patches/semipriority/priority/a_background_image.webp' 'blob_patches/semipriority/priority/qr_img_ThemeDefalut.webp'
      info 'Copying to [flutter_assets/assets/images/dynamic/base]'
      cp -r -f 'blob_patches/semipriority/priority/'* 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      info 'Copying [ic_logo_mb_text.svg]...'
      cp -f 'blob_patches/semipriority/ic_logo_mb_text.svg' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/svgs/'
      info 'Copying [welcom_img_eMbee.webp]...'
      cp -f 'blob_patches/semipriority/welcom_img_eMbee.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'

      # Modify the demo screen
      info 'Modifying demo screenshot...'
      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/module/onboarding/welcome/welcom_img_demoImage01.png|https://gitlab.com/-/project/56341767/uploads/1616c32f26051152de0ee7e60742c47b/priority1.png?ref=mbcpappgit|g'

      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/module/onboarding/welcome/welcom_img_demoImage02.png|https://gitlab.com/-/project/56341767/uploads/f77e596c201d9f99f416ad0b4f5a649c/priority2.png?ref=mbcpappgit|g'

      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/module/onboarding/welcome/welcom_img_demoImage03.png|https://gitlab.com/-/project/56341767/uploads/06054b04e392cde1108a220c10877b58/priority3.png?ref=mbcpappgit|g'

      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/module/onboarding/welcome/welcom_img_demoImage04.png|https://gitlab.com/-/project/56341767/uploads/7bd2d759bb1f2430016e272e27ceb72c/priority4.png?ref=mbcpappgit|g'

      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/module/onboarding/welcome/welcom_img_demoImage05.png|https://gitlab.com/-/project/56341767/uploads/7f5a42716cc32b0f9db78076c15d1cfa/priority5.png?ref=mbcpappgit|g'

      info 'Cleaning...'
      rm -rf 'blob_patches/semipriority/priority'
      echo "Patch applied by MBCPApp Patcher on $(uname -s -r) with commit : $(git rev-parse --short HEAD) at $(date)." > "mbapk/mbapk_unpacked/root/assets/mbcp_info/semipriority_theme.inf"
      good "Applied [MBCP SemiPriority] theme."


    ;;
  'Mid-autumn festival')
    cp -f 'blob_patches/trungthu_theme/general_bg_screenshot.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/quockhanh'
    cp -f 'blob_patches/trungthu_theme/general_bg_success.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/quockhanh'
    cp -f 'blob_patches/trungthu_theme/homeLanding_bg_main.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/quockhanh'
    cp -f 'blob_patches/trungthu_theme/homeLanding_img_defaultBanner.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/quockhanh'
    cp -f 'blob_patches/trungthu_theme/loading_bg_main.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/quockhanh'
    cp -f 'blob_patches/trungthu_theme/login_bg_main.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/quockhanh'
    cp -f 'blob_patches/trungthu_theme/bill_background_gold.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/quockhanh'
    cp -f 'blob_patches/trungthu_theme/coreBanking_img_successBackground.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/quockhanh'
    cp -f 'blob_patches/trungthu_theme/qr_img_ThemeDefalut.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/quockhanh'

    # Trung thu theme since v6.4.68+
    cp -f 'blob_patches/trungthu_theme/general_bg_screenshot.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/trungthu'
    cp -f 'blob_patches/trungthu_theme/general_bg_success.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/trungthu'
    cp -f 'blob_patches/trungthu_theme/homeLanding_bg_main.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/trungthu'
    cp -f 'blob_patches/trungthu_theme/homeLanding_img_defaultBanner.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/trungthu'
    cp -f 'blob_patches/trungthu_theme/loading_bg_main.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/trungthu'
    cp -f 'blob_patches/trungthu_theme/login_bg_main.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/trungthu'
    cp -f 'blob_patches/trungthu_theme/bill_background_gold.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/trungthu'
    cp -f 'blob_patches/trungthu_theme/coreBanking_img_successBackground.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/trungthu'
    cp -f 'blob_patches/trungthu_theme/qr_img_ThemeDefalut.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/trungthu'
    
    rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/static/onboarding/onboarding_illus_a80.webp'
    rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/static/onboarding/onboarding_img_a80Banner.webp'
    rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/static/onboarding/onboarding_img_a80Code.webp'
    rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/static/onboarding/onboarding_bg_a80Landing.webp'

    sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_thumbnail_quockhanh.png|https://gitlab.com/-/project/56341767/uploads/227ca0fc0dd1b5b3973690c3f9031c27/thumb.png?app=mbcp11|g'
    sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenLoading_quockhanh.png|https://gitlab.com/-/project/56341767/uploads/27f934ed3f55c3214185bc193cfdfe2b/preview1.png?app=mbcpapp|g'
    sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenLogin_quockhanh.png|https://gitlab.com/-/project/56341767/uploads/4f5f5398f57ce629b195f0fa6eb21f2a/preview2.png?ref=mbcp1|g'
    sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenHome_quockhanh.png|https://gitlab.com/-/project/56341767/uploads/b0b35d05a0752b6eec0dd19d50f15afd/preview3.png?ref=mbcp|g'
    sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenSuccess_quockhanh.png|https://gitlab.com/-/project/56341767/uploads/c61050db4674a181978b6f868c100aa6/preview4.png?ref=mbcpapp|g'
    sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenShare_quockhanh.png|https://gitlab.com/-/project/56341767/uploads/2bd471b0b9ef7f96b05020bb4af304ed/preview5.png?ref=mbcp1|g'
    echo "Patch applied by MBCPApp Patcher on $(uname -s -r) with commit : $(git rev-parse --short HEAD) at $(date)." > "mbapk/mbapk_unpacked/root/assets/mbcp_info/midautumn_theme.inf"
      good "Applied [Mid-autumn festival] theme."

    ;;
    'MBCP MBClassic')
      info "Ensure that SemiPriority theme is not applied before this !"
      info "Otherwise it will have like mixed SemiPriority and MB Classic theme, You've been warned !!! "
      cp -f 'blob_patches/mbclassic/a_background_image.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/mbclassic/general_bg_screenshot.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/mbclassic/homeLanding_bg_main.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/mbclassic/loading_bg_main.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/mbclassic/login_bg_main.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/mbclassic/qr_img_ThemeDefalut.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'

      # Modify theme preview on settings
      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenLoginClassic.png|https://gitlab.com/-/project/56341767/uploads/f585b28f88876db211f116d1d622031d/mbcp_login.png?git1|g'

      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenLoginClassic.png|https://gitlab.com/-/project/56341767/uploads/f585b28f88876db211f116d1d622031d/mbcp_login.png?git1|g'

      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_thumbnailClassic.png|https://gitlab.com/-/project/56341767/uploads/ba4f0923a4956ba379868e01c55e9cfb/thumb.png?aaaaaaa|g' 

      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_thumbnailClassic.png|https://gitlab.com/-/project/56341767/uploads/ba4f0923a4956ba379868e01c55e9cfb/thumb.png?aaaaaaa|g'

      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenHomeClassic.png|https://gitlab.com/-/project/56341767/uploads/1d7fcf300167e87440220a6f0d28b8c1/mbcp_lobby.png?aaa|g'

      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenHomeClassic.png|https://gitlab.com/-/project/56341767/uploads/1d7fcf300167e87440220a6f0d28b8c1/mbcp_lobby.png?aaa|g' 

      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenSuccessClassic.png|https://gitlab.com/-/project/56341767/uploads/d94e257eb6cf59865016a939541c32fc/mbcp_transfer.png?aaa|g' 

      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenSuccessClassic.png|https://gitlab.com/-/project/56341767/uploads/d94e257eb6cf59865016a939541c32fc/mbcp_transfer.png?aaa|g'

      # Modify the demo screen
      info 'Modifying demo screenshot...'
      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/module/onboarding/welcome/welcom_img_demoImage01.png|https://gitlab.com/-/project/56341767/uploads/27ce08f6245d12e4fde0d36ecdecffdf/classic1.png?ref=mbcpappgit1|g'

      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/module/onboarding/welcome/welcom_img_demoImage02.png|https://gitlab.com/-/project/56341767/uploads/998d986d599474c3a09e152966000ec3/classic2.png?ref=mbcpappgit1|g'

      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/module/onboarding/welcome/welcom_img_demoImage03.png|https://gitlab.com/-/project/56341767/uploads/221fa083ee20f450a69b4a00b1e98e1f/classic3.png?ref=mbcpappgit1|g'

      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/module/onboarding/welcome/welcom_img_demoImage04.png|https://gitlab.com/-/project/56341767/uploads/76f1288713391966cfc750388f7f47b2/classic4.png?ref=mbcpappgit1|g'

      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/module/onboarding/welcome/welcom_img_demoImage05.png|https://gitlab.com/-/project/56341767/uploads/b9063205666549f28fc6c9c0c99e2336/classic5.png?ref=mbcpappgit1|g'

      echo "Patch applied by MBCPApp Patcher on $(uname -s -r) with commit : $(git rev-parse --short HEAD) at $(date)." > "mbapk/mbapk_unpacked/root/assets/mbcp_info/mbclassic_theme.inf"
      good 'Applied [MBCP MBClassic] theme.'
    ;;
    'Noel 2024')
      info "Ensure that SemiPriority theme is not applied before this !"
      info "Otherwise it will have like mixed SemiPriority and MB Classic theme, You've been warned !!! "
      cp -f 'blob_patches/noel/a_background_image.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/bill_background_gold.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/coreBanking_img_successBackground.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/general_bg_screenshot.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/general_bg_success.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/homeLanding_bg_main.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/loading_bg_main.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/login_bg_main.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/qr_img_ThemeDefalut.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      ##############
      cp -f 'blob_patches/noel/a_background_image.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/bill_background_gold.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/coreBanking_img_successBackground.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/general_bg_screenshot.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/general_bg_success.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/homeLanding_bg_main.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/loading_bg_main.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/login_bg_main.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/qr_img_ThemeDefalut.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      # Change theme preview
      cp -f 'blob_patches/noel/customUI_img_classicMode.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      cp -f 'blob_patches/noel/customUI_img_classicMode.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base'
      # Lockdown ability to change other theme, also force Noel 2024 theme
      sed_libapp 's|theme|Noel |g'
      sed_libapp 's|theme|Noel |g'
      # Settings
      sed_libapp 's|Change Noel |Noel 2024   |g'
      sed_libapp 's|Change Noel |Noel 2024   |g'
      # Modify the demo screen
      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/module/onboarding/welcome/welcom_img_demoImage01.png|https://gitlab.com/-/project/56341767/uploads/bab657a5c0a9d0c4e0f7ddd5ba5772e9/noel1.png?ref=mbcpappgit1234|g'
      
      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/module/onboarding/welcome/welcom_img_demoImage02.png|https://gitlab.com/-/project/56341767/uploads/8314efa7352360a84df8ec8315ee587b/noel2.png?ref=mbcpappgit1234|g'

      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/module/onboarding/welcome/welcom_img_demoImage03.png|https://gitlab.com/-/project/56341767/uploads/f05f1e2fc54d24d99504141d65a107e8/noel3.png?ref=mbcpappgit1234|g'

      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/module/onboarding/welcome/welcom_img_demoImage04.png|https://gitlab.com/-/project/56341767/uploads/c64e9e67b3211d42d9e3122751f1536e/noel4.png?ref=mbcpappgit1234|g'

      sed_libapp 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/module/onboarding/welcome/welcom_img_demoImage05.png|https://gitlab.com/-/project/56341767/uploads/2d78975896a9f640d1f1e5af06fd1922/noel5.png?ref=mbcpappgit1234|g'

      warn "You WON'T be able to use other theme than Noel 2024 on app !"
      echo "Patch applied by MBCPApp Patcher on $(uname -s -r) with commit : $(git rev-parse --short HEAD) at $(date)." > "mbapk/mbapk_unpacked/root/assets/mbcp_info/noel2024_theme.inf"
      good "Applied [Noel 2024] theme."
    ;;
    'Exit') exit ;;
  esac
done
