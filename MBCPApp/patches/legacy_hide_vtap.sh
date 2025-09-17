#!/usr/bin/env bash
# PATCHNAME: Legacy hide VTAP activity & dialog
# MAXVER:
# MINVER:
# shellcheck disable=SC1091,SC2016

. "$DIRPATH"/common.sh

confirm "Are you sure you want to apply this patch?" || exit 69

# Adapt with v6.4.64+
warn "Use cases : Some devices that crashes with standard hide VTAP patch"
warn "It is better to use the standard hide VTAP patch, so you don't have to hide anything"
warn "This will only prevent the VGFullScreenDialogActivity from being shown, and the app inside will throw GW908 error when trying to signing in."
warn "You have to hide root with some method for that, like freeze Magisk app with App Manager."
info "Forcing flutter activity..."
sed -i 's|const-class v1, Lcom/vkey/android/vguard/VGFullScreenDialogActivity;|const-class v1, Lio/flutter/plugins/MainActivity;|g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes3/com/vkey/android/ep.smali && info "Done!"
info "Removing VGFullScreenDialogActivity..."
rm -f 'mbapk/mbapk_unpacked/smali/classes3/com/vkey/android/vguard/VGFullScreenDialogActivity.smali' && info "Done!"


