#!/usr/bin/env bash
# PATCHNAME: Restore old registration resources
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

cp -f 'blob_patches/restore_oldreg/onboarding_illus_featureAccount.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/static/onboarding'
cp -f 'blob_patches/restore_oldreg/onboarding_illus_featureFreeService.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/static/onboarding'
cp -f 'blob_patches/restore_oldreg/onboarding_illus_featureMBS.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/static/onboarding'
cp -f 'blob_patches/restore_oldreg/onboarding_illus_featureShield.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/static/onboarding'
cp -f 'blob_patches/restore_oldreg/onboarding_img_referLinkNoneCoin.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/static/onboarding'
cp -f 'blob_patches/restore_oldreg/onboarding_img_referLinkPersonalCoin.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/static/onboarding'
