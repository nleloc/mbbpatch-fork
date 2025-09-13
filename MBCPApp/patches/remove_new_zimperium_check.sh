#!/usr/bin/env bash
# PATCHNAME: Remove new zimperium check 
# MAXVER:
# MINVER: 59
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

    echo "Removing checksum from provider..."
    sed -i 's|e1a14adc915d7ad159edf2668b0dfcb359cf86538642de0e425d027f66eb07b2||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali
    sed -i 's|ca168a2ad00a92b8010d6801c3ca43e6df9f3701f084f6864399eaa4bbfaf56d||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali
    sed -i 's|5c9a139e42e6e6032ddbc1092af9831b8142e4e5ae89700fc7828f5bd62e1671||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali
    sed -i 's|c0a161a71738083df4298a0f03b0c54abf5bfda97c7d230875d97593733226ec||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali
    # Adapt with v6.4.66+
    sed -i 's|99d1447f8dc07a899078c384272258243fafe67521de6cf030870bb5fce74cdd||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali
    sed -i 's|50f8a8f6843881889f49619099e1af4e2948b05944ea1c83655f372c893b3f2a||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali
    sed -i 's|fc014a5752b8aca5f616e4fe62674e767d086f3a759acc9eb3c21cf7919947a4||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali
    sed -i 's|05b05535271457792466296947316ccaefb5bfac8972a9b0e0c64fa02972b031||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali
    sed -i 's|designersactivists                                                                     |weneedfreedom|g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali
    # Adapt with v6.4.66+
    sed -i 's|estimateddistributions                                                                 |weneedfreedom|g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali

    echo "Removing [libtoolChecker.so]..."
    rm -f 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libtoolChecker.so'
    rm -f 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libtoolChecker.so'
    echo "Removing [libvvb2060.so]..."
    rm -f 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libvvb2060.so'
    rm -f 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libvvb2060.so'
    echo "Patching [libdesignersactivists.so]..."
    sed -i 's|com.zimperium|app.dontfixew|g' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libdesignersactivists.so'
    sed -i 's|detection|freedom..|g' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libdesignersactivists.so'
    echo "Moving from [libdesignersactivists.so] to [libweneedfreedom.so]..."
    mv 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libdesignersactivists.so' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libweneedfreedom.so'
    mv 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libdesignersactivists.so' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libweneedfreedom.so'

    # Adapt with v6.4.66+
    echo "Patching [libestimateddistributions.so]..."
    sed -i 's|com.zimperium|app.dontfixew|g' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libestimateddistributions.so'
    sed -i 's|detection|freedom..|g' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libestimateddistributions.so'

    sed -i 's|com.zimperium|app.dontfixew|g' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libestimateddistributions.so'
    sed -i 's|detection|freedom..|g' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libestimateddistributions.so'

    echo "Moving from [libestimateddistributions.so] to [libweneedfreedom.so]..."
    mv 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libestimateddistributions.so' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libweneedfreedom.so'
    mv 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libestimateddistributions.so' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libweneedfreedom.so'

    # Fixes EKYC3002-MS6998 (DF16246.6) error on devices with randomized apps
    sed -i 's|<uses-permission android:name="android.permission.QUERY_ALL_PACKAGES"/>||g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
    # Prevent "MB detected that the device is currently not secure for peforming transactions" dialog
    echo "Creating placeholder lib"
    rm -rf temp
    mkdir temp
    cp 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libweneedfreedom.so' 'temp/'
    mv 'temp/libweneedfreedom.so' 'temp/libdesignersactivists.so'
    cp -f 'temp/libdesignersactivists.so' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libdesignersactivists.so'
    rm -rf temp 
    mkdir temp
    cp 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libweneedfreedom.so' 'temp/'
    mv 'temp/libweneedfreedom.so' 'temp/libdesignersactivists.so'
    cp -f 'temp/libdesignersactivists.so' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libdesignersactivists.so'
    rm -rf temp 

    echo "Creating placeholder lib"
    rm -rf temp
    mkdir temp
    cp 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libweneedfreedom.so' 'temp/'
    mv 'temp/libweneedfreedom.so' 'temp/libestimateddistributions.so'
    cp -f 'temp/libestimateddistributions.so' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libestimateddistributions.so'
    rm -rf temp
    mkdir temp
    cp 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libweneedfreedom.so' 'temp/'
    mv 'temp/libweneedfreedom.so' 'temp/libestimateddistributions.so'
    cp -f 'temp/libestimateddistributions.so' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libestimateddistributions.so'
    rm -rf temp
