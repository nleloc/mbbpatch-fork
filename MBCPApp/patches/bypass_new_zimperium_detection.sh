#!/usr/bin/env bash
# PATCHNAME: Bypass new zimperium detection
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

#if [ -f "$DIRPATH"/mbapk/mbapk_unpacked/smali/androidx/UnderlyingVcl.smali ]
info 'Removing [libvvb2060.so]...'
rm -f 'mbapk/mbapk_unpacked/lib/arm64-v8a/libvvb2060.so'
rm -f 'mbapk/mbapk_unpacked/lib/armeabi-v7a/libvvb2060.so'
info 'Removing [libtoolChecker.so]...'
rm -f 'mbapk/mbapk_unpacked/lib/arm64-v8a/libtoolChecker.so'
rm -f 'mbapk/mbapk_unpacked/lib/armeabi-v7a/libtoolChecker.so'
info 'Removing [libchecks.so]...'
rm -f 'mbapk/mbapk_unpacked/lib/arm64-v8a/libchecks.so'
rm -f 'mbapk/mbapk_unpacked/lib/armeabi-v7a/libchecks.so'
info "Removing checksum from provider..."
sed -i 's|e1a14adc915d7ad159edf2668b0dfcb359cf86538642de0e425d027f66eb07b2||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/androidx/UnderlyingVcl.smali
sed -i 's|ca168a2ad00a92b8010d6801c3ca43e6df9f3701f084f6864399eaa4bbfaf56d||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/androidx/UnderlyingVcl.smali
sed -i 's|5c9a139e42e6e6032ddbc1092af9831b8142e4e5ae89700fc7828f5bd62e1671||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/androidx/UnderlyingVcl.smali
sed -i 's|c0a161a71738083df4298a0f03b0c54abf5bfda97c7d230875d97593733226ec||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/androidx/UnderlyingVcl.smali
info "Patching [libdesignersactivists.so]..."
sed_libzdefend 's|zimperium.c|zimperium.x|g'
sed_libzdefend 's|com.zimperium.threat.new|app.zimperiam.nonpop.all|g'
sed_libzdefend 's|com.zimperium.command|app.zimperiam.commall|g'
sed_libzdefend 's|com.zimperium.threat.get|app.zimperiam.nonpop.all|g'
sed_libzdefend 's|detection|freedom..|g'
manifest_remove 'android:name="android.permission.QUERY_ALL_PACKAGES"'
warn "Clearing app data is mandatory in order to not trigger root detect screen"
