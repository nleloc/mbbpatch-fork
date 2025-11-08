#!/usr/bin/env bash
# PATCHNAME: Remove bulit-in fonts
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/fonts/AvertaStdCY-Black.otf'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/fonts/AvertaStdCY-BlackItalic.otf'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/fonts/AvertaStdCY-Bold.otf'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/fonts/AvertaStdCY-BoldItalic.otf'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/fonts/AvertaStdCY-Extrabold.otf'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/fonts/AvertaStdCY-ExtraboldItalic.otf'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/fonts/AvertaStdCy-Extrathin.otf'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/fonts/AvertaStdCy-ExtrathinItalic.otf'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/fonts/AvertaStdCY-Light.otf'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/fonts/AvertaStdCY-LightItalic.otf'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/fonts/AvertaStdCY-Regular.otf'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/fonts/AvertaStdCY-RegularItalic.otf'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/fonts/AvertaStdCY-Semibold.otf'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/fonts/AvertaStdCY-SemiboldItalic.otf'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/fonts/AvertaStdCY-Thin.otf'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/fonts/AvertaStdCY-ThinItalic.otf'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/fonts/SF-Pro-Display-Medium.ttf'
rm -f 'mbapk/mbapk_unpacked/resources/package_1/res/font/avenir_next_bold.ttf'
rm -f 'mbapk/mbapk_unpacked/resources/package_1/res/font/bold.ttf'
rm -f 'mbapk/mbapk_unpacked/resources/package_1/res/font/medium.ttf'
rm -f 'mbapk/mbapk_unpacked/resources/package_1/res/font/regular.ttf'
rm -f 'mbapk/mbapk_unpacked/root/assets/insider.ttf'
# Placeholder font to fix display issues when open details balance notifications 
info "Creating placeholder font..."
touch 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/fonts/AvertaStdCY-Regular.otf' 
# Placeholder to prevent compiling resource fail
touch 'mbapk/mbapk_unpacked/resources/package_1/res/font/avenir_next_bold.ttf'
info 'Copying fix fonts...'
# NFC scanning phase requires actual font in order to not throw exception
cp -f 'blob_patches/resources/font/bold.ttf' 'mbapk/mbapk_unpacked/resources/package_1/res/font/'
cp -f 'blob_patches/resources/font/medium.ttf' 'mbapk/mbapk_unpacked/resources/package_1/res/font/'
cp -f 'blob_patches/resources/font/regular.ttf' 'mbapk/mbapk_unpacked/resources/package_1/res/font/'

# MB Marketplace (MiniApp) fonts
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/packages/market_place/assets/fonts/AvertaStdCy-Bold.ttf'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/packages/market_place/assets/fonts/AvertaStdCY-Regular.ttf'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/packages/market_place/assets/fonts/AvertaStdCy-Semibold.ttf'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/packages/market_place/assets/fonts/Montserrat-Medium.ttf'





