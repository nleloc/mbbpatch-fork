#!/usr/bin/env bash
# PATCHNAME: Change app logo
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

PS3='Select app icon variant to continue : '
select opt in 'MB Classic' 'New Year 2023' 'Valentine 2025' 'SemiMonet' '30/4-1/5' '19/8-2/9 2025' 'Summer 2025' 'Mid-autumn festival 2025' 'Noel 2024' 'Exit'
do
    case "$opt" in
        'MB Classic') variant="normal" ;;
        'New Year 2023') variant="tet" ;;
        'Valentine 2025') variant="valentine" ;;
	'SemiMonet') variant="semimonet" ;;
        '30/4-1/5') variant="thongnhatVN" ;;
	'19/8-2/9 2025') variant="quockhanh2025" ;;
        'Summer 2025') variant="summer2025" ;;
        'Mid-autumn festival 2025') variant="trungthu" ;;
        'Noel 2024') variant="noel" ;;
        'Exit') exit ;;
    esac

    info 'Removing old logos...'
    rm -rf "$DIRPATH"/mbapk/mbapk_unpacked/resources/package_1/res/mipmap-hdpi
    rm -rf "$DIRPATH"/mbapk/mbapk_unpacked/resources/package_1/res/mipmap-mdpi
    rm -rf "$DIRPATH"/mbapk/mbapk_unpacked/resources/package_1/res/mipmap-xhdpi
    rm -rf "$DIRPATH"/mbapk/mbapk_unpacked/resources/package_1/res/mipmap-xxhdpi
    rm -rf "$DIRPATH"/mbapk/mbapk_unpacked/resources/package_1/res/mipmap-xxxhdpi
    
    info 'Copying new logos to [mbapk_unpacked/res]...'
    cp -r -f "$DIRPATH"/mbcpicons/"$variant"/mipmap-hdpi mbapk/mbapk_unpacked/resources/package_1/res
    cp -r -f "$DIRPATH"/mbcpicons/"$variant"/mipmap-mdpi mbapk/mbapk_unpacked/resources/package_1/res
    cp -r -f "$DIRPATH"/mbcpicons/"$variant"/mipmap-xhdpi mbapk/mbapk_unpacked/resources/package_1/res
    cp -r -f "$DIRPATH"/mbcpicons/"$variant"/mipmap-xxhdpi mbapk/mbapk_unpacked/resources/package_1/res
    cp -r -f "$DIRPATH"/mbcpicons/"$variant"/mipmap-xxxhdpi mbapk/mbapk_unpacked/resources/package_1/res

done
