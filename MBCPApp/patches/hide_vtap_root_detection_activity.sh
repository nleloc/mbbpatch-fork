#!/usr/bin/env bash
# PATCHNAME: Hide VTAP root detection activity & dialog
# MAXVER:
# MINVER:
# shellcheck disable=SC1091,SC2016
. "$DIRPATH"/common.sh

# Adapt with v6.4.53+
sed -i 's|Lcom/vtap/MaintenanceActivity;|Lio/flutter/plugins/MainActivity;|g' "$DIRPATH"/mbapk/mbapk_unpacked/smali_classes4/com/vtap/d.smali > /dev/null 2>&1

sed -i 's|Lcom/vtap/MaintenanceActivity;|Lio/flutter/plugins/MainActivity;|g' "$DIRPATH"/mbapk/mbapk_unpacked/smali_classes4/com/vtap/VTapSetupPlugin.smali  > /dev/null 2>&1
rm -f 'mbapk/mbapk_unpacked/smali_classes4/com/vtap/MaintenanceActivity.smali'
rm -f 'mbapk/mbapk_unpacked/smali_classes4/com/vtap/MaintenanceActivity$1.smali'
rm -f 'mbapk/mbapk_unpacked/smali_classes4/com/vkey/android/vguard/VGDialogActivity.smali'
sed -i 's|Lcom/vkey/android/vguard/VGDialogActivity;|Lio/flutter/plugins/MainActivity;|g' "$DIRPATH"/mbapk/mbapk_unpacked/smali_classes4/com/vkey/android/dy.smali
# Bypass VKey root check that throw VGFullScreenDialogActivity then exit :)
cp -f 'blob_patches/bypass_rootold/BasicThreatInfo.smali' 'mbapk/mbapk_unpacked/smali_classes4/com/vkey/android/internal/vguard/engine/'
cp -f 'blob_patches/bypass_rootold/VGThreatAppInfo.smali' 'mbapk/mbapk_unpacked/smali_classes4/com/vkey/android/vguard/model/'
cp -f 'blob_patches/bypass_rootold/VGThreatResponse.smali' 'mbapk/mbapk_unpacked/smali_classes4/com/vkey/android/vguard/model/'
# Adapt with v6.4.62+
cp -f 'blob_patches/bypass_rootold/BasicThreatInfo.smali' 'mbapk/mbapk_unpacked/smali_classes3/com/vkey/android/internal/vguard/engine/'
cp -f 'blob_patches/bypass_rootold/VGThreatAppInfo.smali' 'mbapk/mbapk_unpacked/smali_classes3/com/vkey/android/vguard/model/'
cp -f 'blob_patches/bypass_rootold/VGThreatResponse.smali' 'mbapk/mbapk_unpacked/smali_classes3/com/vkey/android/vguard/model/'
# Test crash fixes for some Android 13 devices
sed -i 's|invoke-virtual {v5, v12}, Lcom/vkey/android/vguard/model/VGThreatResponse;->setUsingLegacyMessage(Z)V| |g' 'mbapk/mbapk_unpacked/smali_classes4/com/vkey/android/eg.smali'
sed -i 's|invoke-virtual {v5, v12}, Lcom/vkey/android/vguard/model/VGThreatResponse;->setUsingLegacyMessage(Z)V| |g' 'mbapk/mbapk_unpacked/smali_classes3/com/vkey/android/eg.smali'
