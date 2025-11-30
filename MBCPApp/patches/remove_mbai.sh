#!/usr/bin/env bash
# PATCHNAME: Remove MB AI Bullsh*t resources
# MAXVER: 
# MINVER: 73
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

# Currently not possible to completely remove and prevent users from use AI features in MB app.
# So we remove it's resources instead, so the search icon won't show AI things
# Need to implement more ASAP in the future

# Mass/Private users
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/img_mbai_short_white.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/img_mbai_textLogo.private.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/img_mbai_textLogo.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/mbai_img_paste.private.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/mbai_img_paste.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/mbai_img_paste2Pay.private.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/mbai_img_paste2Pay.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/mbai_img_search.private.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/mbai_img_search.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/coreBanking_illus_p2p.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/coreBanking_illus_p2p.private.webp'

# Priority users
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/mbai_img_paste.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/mbai_img_paste2Pay.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/mbai_img_search.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/coreBanking_illus_p2p.webp'


# Other stuff
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/static/base/partner/img_mbai_short.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/static/base/partner/img_mbai_short_white.webp'


# Replace MB AI search button with normal search button
cp -f 'blob_patches/searchicon/search.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/img_mbai_textLogo.webp'
cp -f 'blob_patches/searchicon/search.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/img_mbai_textLogo.private.webp'
# Adapt new changes with v6.4.75
cp -f 'blob_patches/searchicon/search.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/mbai_img_search.webp'
cp -f 'blob_patches/searchicon/search.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/mbai_img_search.private.webp'
# Adapt with new animated search AI logo (v6.4.77+)
cp -f 'blob_patches/searchicon/search.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/static/search_ai.gif'











