#!/usr/bin/env bash
# PATCHNAME: Add anime resources
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

cp -f 'blob_patches/anime_resources/rating_illus_fiveStar.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/'
cp -f 'blob_patches/anime_resources/rating_illus_fourStar.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/'
cp -f 'blob_patches/anime_resources/rating_illus_threeStar.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/'
cp -f 'blob_patches/anime_resources/rating_illus_twoStar.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/'
cp -f 'blob_patches/anime_resources/rating_illus_oneStar.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/'
cp -f 'blob_patches/anime_resources/general_illus_versionUpdate.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/'
cp -f 'blob_patches/anime_resources/general_illus_versionUpdate.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/priority/'

if [[ -d mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/quockhanh ]]; then
	cp -f 'blob_patches/anime_resources/general_illus_versionUpdate.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/quockhanh/'
else
	info "[quockhanh] folder not found! skipping"
fi

if [[ -d mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/womendayvn ]]; then
	cp -f 'blob_patches/anime_resources/general_illus_versionUpdate.webp' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/womendayvn/'
else
	info "[quockhanh] folder not found! skipping"
fi
