#!/usr/bin/env bash
# PATCHNAME: Remove new zimperium check
# MAXVER:
# MINVER: 6.4.59
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

    echo "Removing checksum from provider..."
    if [[ -f mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali ]]; then
    # for v6.4.48~v6.4.65
    info "Patching [UnderlyingVcl.smali]..."
    sed -i 's|e1a14adc915d7ad159edf2668b0dfcb359cf86538642de0e425d027f66eb07b2||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali
    sed -i 's|ca168a2ad00a92b8010d6801c3ca43e6df9f3701f084f6864399eaa4bbfaf56d||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali
    sed -i 's|5c9a139e42e6e6032ddbc1092af9831b8142e4e5ae89700fc7828f5bd62e1671||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali
    sed -i 's|c0a161a71738083df4298a0f03b0c54abf5bfda97c7d230875d97593733226ec||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali
    # Adapt with v6.4.66
    sed -i 's|99d1447f8dc07a899078c384272258243fafe67521de6cf030870bb5fce74cdd||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali
    sed -i 's|50f8a8f6843881889f49619099e1af4e2948b05944ea1c83655f372c893b3f2a||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali
    sed -i 's|fc014a5752b8aca5f616e4fe62674e767d086f3a759acc9eb3c21cf7919947a4||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali
    sed -i 's|05b05535271457792466296947316ccaefb5bfac8972a9b0e0c64fa02972b031||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali
    # Moving libraries target
    sed -i 's|designersactivists                                                                     |weneedfreedom|g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali
     # Adapt with v6.4.66
    sed -i 's|estimateddistributions                                                                 |weneedfreedom|g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali
else
    warn "[UnderlyingVcl.smali] not found! skipping"
fi
    # Adapt with v6.4.67+
    if [[ -f mbapk/mbapk_unpacked/smali/classes/androidx/AmericansEhv.smali ]]; then
    info "Patching [AmericansEhv.smali]..."
    sed -i 's|262ccf104bca70cf923a9a6f1c6b93de88d6727407bc2940b87cb1d09aa44d74||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/AmericansEhv.smali
    sed -i 's|180a673c58af3270778c94b8265b2c845ed6456bbdcd53fa14768944d7c428cf||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/AmericansEhv.smali
    sed -i 's|e72c2bddc714ad4815bc87dc917c74b2e2de513d26ad9271c0433702e26c7a64||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/AmericansEhv.smali
    sed -i 's|9a037f2477f411df5ef8d74ec365256afcd72fe5a823efacec93642e0c09552f||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/AmericansEhv.smali
    sed -i 's|humanargued                                                                            |cuynuisaloser|g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/AmericansEhv.smali
else
    warn "[AmericansEhv.smali] not found! skipping"
fi
    # Adapt with v6.4.72+
    if [[ -f mbapk/mbapk_unpacked/smali/classes/androidx/FailsXvd.smali ]]; then
    info "Patching [FailsXvd.smali]..."
    sed -i 's|045823e02a8a56f3ed4b183902f6fbd4a757c74c0e4489dd0a8244f9f2dcb43f||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/FailsXvd.smali
    sed -i 's|08140e0adea76ad142d792cc0c5e9c2ad7384ad239a0f38cf5572a043cee09eb||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/FailsXvd.smali
    sed -i 's|7773dd518920b751ba05516228d75d71475271d867b9fd503ce8bbfa558977df||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/FailsXvd.smali
    sed -i 's|8e565ee8153571685dbbfb1812ff4eab159108973d839d7141535bf57592e420||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/FailsXvd.smali
    sed -i 's|closestmadagascar                                                                      |ilovecpp|g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/FailsXvd.smali
else
    warn "[FailsXvd.smali] not found! skipping"
fi

    info "Removing [libtoolChecker.so]..."
    rm -f 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libtoolChecker.so'
    rm -f 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libtoolChecker.so'
    info "Removing [libvvb2060.so]..."
    rm -f 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libvvb2060.so'
    rm -f 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libvvb2060.so'

    if [[ -f mbapk/mbapk_unpacked/root/lib/arm64-v8a/libdesignersactivists.so ]]; then
    info "Patching [libdesignersactivists.so]..."
    sed -i 's|com.zimperium|app.dontfixew|g' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libdesignersactivists.so'
    sed -i 's|detection|freedom..|g' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libdesignersactivists.so'
    info "Moving from [libdesignersactivists.so] to [libweneedfreedom.so]..."
    mv 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libdesignersactivists.so' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libweneedfreedom.so'
    mv 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libdesignersactivists.so' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libweneedfreedom.so'

    info "Creating placeholder lib"
    # Prevent "MB detected that the device is currently not secure for peforming transactions" dialog
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
else
    warn "[libdesignersactivists.so] not found! skipping"
fi

    # Adapt with v6.4.66
    if [[ -f mbapk/mbapk_unpacked/root/lib/arm64-v8a/libestimateddistributions.so ]]; then
    info "Patching [libestimateddistributions.so]..."
    sed -i 's|com.zimperium|app.dontfixew|g' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libestimateddistributions.so'
    sed -i 's|detection|freedom..|g' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libestimateddistributions.so'

    sed -i 's|com.zimperium|app.dontfixew|g' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libestimateddistributions.so'
    sed -i 's|detection|freedom..|g' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libestimateddistributions.so'

    info "Moving from [libestimateddistributions.so] to [libweneedfreedom.so]..."
    mv 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libestimateddistributions.so' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libweneedfreedom.so'
    mv 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libestimateddistributions.so' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libweneedfreedom.so'

    info "Creating placeholder lib"
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
else
    warn "[libestimateddistributions.so] not found! skipping"
fi

    # Adapt with v6.4.67
    if [[ -f mbapk/mbapk_unpacked/root/lib/arm64-v8a/libestimateddistributions.so ]]; then
    info "Patching [libhumanargued.so]... "
    sed -i 's|com.zimperium|app.dontfixew|g' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libhumanargued.so'
    sed -i 's|detection|freedom..|g' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libhumanargued.so'

    sed -i 's|com.zimperium|app.dontfixew|g' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libhumanargued.so'
    sed -i 's|detection|freedom..|g' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libhumanargued.so'

    info "Moving from [libhumanargued.so] to [libcuynuisaloser.so]..."
    mv 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libhumanargued.so' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libcuynuisaloser.so'
    mv 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libhumanargued.so' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libcuynuisaloser.so'

    info "Creating placeholder lib"
    rm -rf temp
    mkdir temp
    cp 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libcuynuisaloser.so' 'temp/'
    mv 'temp/libcuynuisaloser.so' 'temp/libhumanargued.so'
    cp -f 'temp/libhumanargued.so' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libhumanargued.so'
    rm -rf temp
    mkdir temp
    cp 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libcuynuisaloser.so' 'temp/'
    mv 'temp/libcuynuisaloser.so' 'temp/libhumanargued.so'
    cp -f 'temp/libhumanargued.so' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libhumanargued.so'
    rm -rf temp

else
    warn "[libhumanargued.so] not found! skipping"
fi

    # Adapt with v6.4.72+
    if [[ -f mbapk/mbapk_unpacked/root/lib/arm64-v8a/libclosestmadagascar.so ]]; then
    info "Patching [libclosestmadagascar.so]... "
    sed -i 's|com.zimperium|app.dontfixew|g' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libclosestmadagascar.so'
    sed -i 's|detection|freedom..|g' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libclosestmadagascar.so'

    sed -i 's|com.zimperium|app.dontfixew|g' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libclosestmadagascar.so'
    sed -i 's|detection|freedom..|g' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libclosestmadagascar.so'

    info "Moving from [libclosestmadagascar.so] to [libilovecpp.so]..."
    mv 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libclosestmadagascar.so' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libilovecpp.so'
    mv 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libclosestmadagascar.so' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libilovecpp.so'

    info "Creating placeholder lib"
    rm -rf temp
    mkdir temp
    cp 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libilovecpp.so' 'temp/'
    mv 'temp/libilovecpp.so' 'temp/libclosestmadagascar.so'
    cp -f 'temp/libclosestmadagascar.so' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libclosestmadagascar.so'
    rm -rf temp
    mkdir temp
    cp 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libilovecpp.so' 'temp/'
    mv 'temp/libilovecpp.so' 'temp/libclosestmadagascar.so'
    cp -f 'temp/libclosestmadagascar.so' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libclosestmadagascar.so'
    rm -rf temp

else
    warn "[libclosestmadagascar.so] not found! skipping"
fi
    # Fixes EKYC3002-MS6998 (DF16246.6) error on devices with randomized apps
    info "Patching [AndroidManifest.xml]"
    sed -i 's|<uses-permission android:name="android.permission.QUERY_ALL_PACKAGES"/>||g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'



