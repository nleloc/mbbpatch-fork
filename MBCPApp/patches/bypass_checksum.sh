#!/usr/bin/env bash
# PATCHNAME: Bypass GW934 checksum
# MAXVER: 67
# MINVER: 63
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

warn "Source code for [app-debug.apk] are on [https://git.disroot.org/cuynu/ApkSignatureKillerEx]"
warn "Ensure that you applied all patches you want, and then apply this as the last one!"
confirm "Are you sure you want to apply this patch?" || exit 69

mkdir -p tools/bypass

if ! [ -f 'tools/bypass/app-debug.apk' ] ; then
    info "Downloading pre-compiled ApkSignatureKillerEx..."
    wget -q --show-progress -O 'tools/bypass/app-debug.apk' 'https://git.disroot.org/cuynu/ApkSignatureKillerEx/releases/download/1.0/app-debug.apk'
fi

info "Extracting [app-debug.apk]..."
unzip -o 'tools/bypass/app-debug.apk' -d 'tools/bypass'
mv 'tools/bypass/lib/arm64-v8a/libSignatureKiller.so' 'tools/bypass/lib/arm64-v8a/libmodft3.so' 
mv 'tools/bypass/lib/armeabi-v7a/libSignatureKiller.so' 'tools/bypass/lib/armeabi-v7a/libmodft3.so'
info "Moving libraries..."
mv 'tools/bypass/lib/arm64-v8a/libmodft3.so' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a' 
mv 'tools/bypass/lib/armeabi-v7a/libmodft3.so' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a' 

mv 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libapp.so' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libmbcp.so'
mv 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libapp.so' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libmbcp.so'

info "Moving usages..."
sed -i 's|libapp.so|libmbcp.so|g' 'mbapk/mbapk_unpacked/smali/classes4/io/flutter/embedding/engine/loader/FlutterApplicationInfo.smali'
sed -i 's|android:name="bin.mt.signature.KillerApplication"||g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
sed -i 's|android:icon="@mipmap/ic_launcher"|android:icon="@mipmap/ic_launcher" android:name="bin.mt.signature.KillerApplication"|g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'

info "Moving code..."
cp -r 'blob_patches/bypass_apptampering/bin' 'mbapk/mbapk_unpacked/smali/classes5'
cp -r 'blob_patches/bypass_apptampering/org/lsposed/hiddenapibypass' 'mbapk/mbapk_unpacked/smali/classes5/org/lsposed/hiddenapibypass'

info "Unpacking [MBOriginal.apk]..."
rm -rf 'tools/bypass/tmp'
rm -f 'mbapk/mbapk_unpacked/assets/mbhook'
java -jar tools/apkeditor.jar d -i mbapk/MBOriginal.apk -o tools/bypass/tmp
    info "Cleaning useless files..."
    rm -rf 'tools/bypass/tmp/root/assets/_4A9w8flncUrhDOG8dyqLi_azBTYT3PlSXz0hiCzRQA_'
    rm -rf 'tools/assets/tmp/root/assets/0QDl12M5S2hKxoKF4cNI4kEX1qDQRMiOd34TXjSjy4M_'
    rm -rf 'tools/bypass/tmp/root/assets/2GcdAWdkXGgxPfHSIhzLkrkf2LU6Z_cuZfUWnczoEHw_'
    rm -rf 'tools/bypass/tmp/root/assets/BiLlLhV4LAy_y_rvwmD82q_4yN_liwgN1X0mfwfqTeE_'
    rm -rf 'tools/bypass/tmp/root/assets/c7uFHgsHzlQ_T524_4N3h9neXvtcUg0m1ERhEjFpPI8_'
    rm -rf 'tools/bypass/tmp/root/assets/ccBu4aSM_mSaMBpFvr14pizu6EGMvwRiZltU_zVJMz0_'
    rm -rf 'tools/bypass/tmp/root/assets/DcM3z3tolULDhbn8YrUE7hxOlxZx2oFC5yNQFG1SX9k_'
    rm -rf 'tools/bypass/tmp/root/assets/fPGzhQFvISia1NiVGU8vQx9IpRm63E4_1Xv0Z2ypWUE_'
    rm -rf 'tools/bypass/tmp/root/assets/g9x205p_On9_RR4kI_GdsoQ2pfSrV_OQXSopshyhYVk_'
    rm -rf 'tools/bypass/tmp/root/assets/GXNv8xc5IcVF6TyUgjJpyYFeyHGqUqN7ZS0X_2WRbEE_'
    rm -rf 'tools/bypass/tmp/root/assets/H8leCCp85eX0YRvo4WCzqF5MEuj2_9ix6zL2bjnj6hk_'
    rm -rf 'tools/bypass/tmp/root/assets/Hput_BfAb8ftOt8hvazec24Eqk0gC5DDY6qALJMLtcI_'
    rm -rf 'tools/bypass/tmp/root/assets/MZuOOtdhO6pcGnZ5_kqMPh56hL3LqawBZd05vfIivww_'
    rm -rf 'tools/bypass/tmp/root/assets/noNmNoHJ0EUpV0TiKtyRPIVWI0im6K1RPIq3N_q0ho0_'
    rm -rf 'tools/bypass/tmp/root/assets/oOot9yCPD3GFqBix7JXjoz4Uui3k3NrwI8wHRlOpn4s_'
    rm -rf 'tools/bypass/tmp/root/assets/rqfr7ucXEZM4vIIYYPHXlo6IG1iEad_H61Z4bbEMR3s_'
    rm -rf 'tools/bypass/tmp/root/assets/Sje9R7eg_A4wlgbLNHwXS5xNFmS5qaoPnJ6Vg0RnIQ8_'
    rm -rf 'tools/bypass/tmp/root/assets/t8_bY_8ibDPQ9rngMwnd7WFI_uqoPlht9nBi26_llbw_'
    rm -rf 'tools/bypass/tmp/root/assets/VipqZ50mSUd28eIlPS_2t31IZ6tY24fl8sSl5YsQrbI_'
    rm -rf 'tools/bypass/tmp/root/assets/vLpH08bnGzkpsq_MmUdHqkh3bjrVN5tutp6s4jscm3w_'
    rm -rf 'tools/bypass/tmp/root/assets/WZ7CC4mxgoVWzgm8AO7rbOneE6TkqXwT2YV3htdswEQ_'
    rm -rf 'tools/bypass/tmp/root/assets/x_uYtCXdh_oYw_XLfZQkX10Bcqq2HFK3q7v1dJVw3zM_'
    rm -rf 'tools/bypass/tmp/root/assets/Y83jllvBi79vZIh2_UNtyo3_Lvd94lqie_q1dc5O3j0_'
    rm -rf 'tools/bypass/tmp/root/assets/ZN6CRAqtR7CKp7LFoivhHDbCS6iAtrEW6_sLvrfWgEM_'
    rm -rf 'tools/bypass/tmp/root/assets/ZOKOK1a6XCiqYb_a8bYPE9c0rjUf7_n7k77YxX5Ypdw_'
    rm -rf 'tools/bypass/tmp/root/assets/zxHdhL4_ZEQLQeo8R2DzSYl9PGss_cKSCQTcZGBtVmU_'
    rm -rf 'tools/bypass/tmp/root/assets/jNMI79raTvV7VHN5Vrzw4Xs66YP_a1ftP9SmUB24DYg_'

info "Moving libraries..."
cp -f 'tools/bypass/tmp/root/lib/arm64-v8a/libapp.so' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a'
cp -f 'tools/bypass/tmp/root/lib/armeabi-v7a/libapp.so' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a'

cp -f 'tools/bypass/tmp/root/lib/arm64-v8a/libdesignersactivists.so' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/'
cp -f 'tools/bypass/tmp/root/lib/armeabi-v7a/libdesignersactivists.so' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/'

cp -f 'tools/bypass/tmp/root/lib/arm64-v8a/libestimateddistributions.so' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/'
cp -f 'tools/bypass/tmp/root/lib/armeabi-v7a/libestimateddistributions.so' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a'

info "Removing unnecessary files from unpacked [MBOriginal.apk]..."
rm -rf 'tools/bypass/tmp/root/lib'
rm -rf 'tools/bypass/tmp/root/assets'

info "Repacking APK... [not MBCP app itself!]"
rm -rf 'mbapk/mbapk_unpacked/assets/mbhook'
java -jar tools/apkeditor.jar b -i 'tools/bypass/tmp' -o 'mbapk/mbapk_unpacked/root/assets/mbhook'

warn "DO NOT APPLY ANY OTHER PATCHES AFTER APPLIED THIS !!!"
warn "OTHERWISE, GW934 ERROR MIGHT APPEARS AGAIN !!!"
warn "YOU'VE WARNED !!!!"

pblock "Bypass GW934 checksum"
