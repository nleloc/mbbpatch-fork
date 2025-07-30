#!/usr/bin/env bash
# PATCHNAME: Remove garbage permission & activities
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

sed -i 's|android:protectionLevel="signature"|android:protectionLevel="normal"|g' "$DIRPATH"/mbapk/mbapk_unpacked/AndroidManifest.xml
manifest_remove 'android:name="com.android.vending.CHECK_LICENSE"'
manifest_remove 'android:name="com.google.android.gms.permission.AD_ID"'
manifest_remove "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"
manifest_remove "com.vtap.MaintenanceActivity"
manifest_remove "com.mbmobile.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION"
manifest_remove "com.vkey.android.vguard.VGDialogActivity"
