#!/usr/bin/env bash
# PATCHNAME: Hide VTAP root detection activity & dialog
# MAXVER: 
# MINVER:
# shellcheck disable=SC1091,SC2016
. "$DIRPATH"/common.sh

if [[ -d mbapk/mbapk_unpacked/smali/classes4/com/vtap/ ]]; then
  info "VTAP is found on [smali_classes4], Applying!"
  # Adapt with v6.4.53+
  sed -i 's|Lcom/vtap/MaintenanceActivity;|Lio/flutter/plugins/MainActivity;|g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes4/com/vtap/d.smali
  sed -i 's|Lcom/vtap/MaintenanceActivity;|Lio/flutter/plugins/MainActivity;|g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes4/com/vtap/VTapSetupPlugin.smali
  rm -f 'mbapk/mbapk_unpacked/smali/classes4/com/vtap/MaintenanceActivity.smali'
  rm -f 'mbapk/mbapk_unpacked/smali/classes4/com/vtap/MaintenanceActivity$1.smali'
  rm -f 'mbapk/mbapk_unpacked/smali/classes4/com/vkey/android/vguard/VGDialogActivity.smali'
  sed -i 's|Lcom/vkey/android/vguard/VGDialogActivity;|Lio/flutter/plugins/MainActivity;|g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes4/com/vkey/android/dy.smali
  # Bypass VKey root check that throw VGFullScreenDialogActivity then exit :)
  cp -f 'blob_patches/bypass_rootold/BasicThreatInfo.smali' 'mbapk/mbapk_unpacked/smali/classes4/com/vkey/android/internal/vguard/engine/'
  cp -f 'blob_patches/bypass_rootold/VGThreatAppInfo.smali' 'mbapk/mbapk_unpacked/smali/classes4/com/vkey/android/vguard/model/'
  cp -f 'blob_patches/bypass_rootold/VGThreatResponse.smali' 'mbapk/mbapk_unpacked/smali/classes4/com/vkey/android/vguard/model/'
  # Zygisk detection workaround test
  sed -i 's|zygisk|giskzy|g' "$DIRPATH"/mbapk/mbapk_unpacked/root/lib/arm64-v8a/libvosWrapperEx.so
  sed -i 's|zygisk|giskzy|g' "$DIRPATH"/mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libvosWrapperEx.so

  # Test crash fixes for some Android 13 devices
  sed -i 's|invoke-virtual {v5, v12}, Lcom/vkey/android/vguard/model/VGThreatResponse;->setUsingLegacyMessage(Z)V| |g' 'mbapk/mbapk_unpacked/smali/classes4/com/vkey/android/eg.smali'
else
  info "VTAP is not found on [smali_classes4], ignore copying!"
fi

if [[ -d mbapk/mbapk_unpacked/smali/classes3/com/vtap ]]; then
  info "VTAP is found on [smali_classes3], Applying!"
  # Adapt with v6.4.62+
  cp -f 'blob_patches/bypass_rootold/BasicThreatInfo.smali' 'mbapk/mbapk_unpacked/smali/classes3/com/vkey/android/internal/vguard/engine/'
  cp -f 'blob_patches/bypass_rootold/VGThreatAppInfo.smali' 'mbapk/mbapk_unpacked/smali/classes3/com/vkey/android/vguard/model/'
  cp -f 'blob_patches/bypass_rootold/VGThreatResponse.smali' 'mbapk/mbapk_unpacked/smali/classes3/com/vkey/android/vguard/model/'
  # Test crash fixes for some Android 13 devices
  sed -i 's|invoke-virtual {v5, v12}, Lcom/vkey/android/vguard/model/VGThreatResponse;->setUsingLegacyMessage(Z)V| |g' 'mbapk/mbapk_unpacked/smali/classes3/com/vkey/android/eg.smali'
else
  info "VTAP is not found on [smali_classes3], ignore copying!"
  warn "Something wrong here! [smali_classes3] should contains VTAP !!!"
  warn "Try to unpack app again !"
  exit 1
fi
