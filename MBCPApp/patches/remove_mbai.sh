#!/usr/bin/env bash
# PATCHNAME: Remove MB AI Slop resources
# MAXVER:
# MINVER: 6.4.73
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

enforcemb() {
    if [ -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/customize_img_changeImageContent.webp' ]
then
    info "App newer than v6.4.84 ! Using new search logo!"
    # Replace MB AI search button with normal search button
    cp -f 'blob_patches/searchicon/search_718.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/img_mbai_textLogo.webp'
    cp -f 'blob_patches/searchicon/search_718.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/img_mbai_textLogo.private.webp'
    # Adapt new changes with v6.4.75
    cp -f 'blob_patches/searchicon/search_718.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/mbai_img_search.webp'
    cp -f 'blob_patches/searchicon/search_718.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/mbai_img_search.private.webp'
else
    info "App older than v6.4.83 ! Using old search logo!"
    # Replace MB AI search button with normal search button
    cp -f 'blob_patches/searchicon/search.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/img_mbai_textLogo.webp'
    cp -f 'blob_patches/searchicon/search.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/img_mbai_textLogo.private.webp'
    # Adapt new changes with v6.4.75
    cp -f 'blob_patches/searchicon/search.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/mbai_img_search.webp'
    cp -f 'blob_patches/searchicon/search.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/mbai_img_search.private.webp'
fi
}

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
# Tet binh ngo
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/tetbinhngo/coreBanking_illus_p2p.webp'

# Priority users
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/mbai_img_paste.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/mbai_img_paste2Pay.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/mbai_img_search.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/coreBanking_illus_p2p.webp'
# New resources
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/mbai_img_paste.priority.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/mbai_img_paste2Pay.priority.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/mbai_img_search.priority.webp'
# New resources
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/mbai_img_paste.priority.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/mbai_img_paste2Pay.priority.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/mbai_img_search.priority.webp'

# Other stuff
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/static/base/partner/img_mbai_short.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/static/base/partner/img_mbai_short_white.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/img_mbai_textOnly_white.webp'
# Temp solution for forced MB AI assistant in v6.4.91+ (A/B testing from MB side, not yet in production)
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/static/ai_assistant'

# Call the enforcemb function 
enforcemb

# Adapt with new animated search AI logo (v6.4.77+)
cp -f 'blob_patches/searchicon/search.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/static/search_ai.gif'

# Adapt with more new AI slop icons (v6.5.x)
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/mbai_img_camera.webp'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/mbai_img_photo.webp'
