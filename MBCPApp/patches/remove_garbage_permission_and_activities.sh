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
#manifest_remove "com.vtap.MaintenanceActivity"
manifest_remove "com.mbmobile.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION"
#manifest_remove "com.vkey.android.vguard.VGDialogActivity"
#manifest_remove "com.vkey.android.vguard.VGFullScreenDialogActivity"
manifest_remove "com.google.android.play.core.common.PlayCoreDialogWrapperActivity"
manifest_remove "com.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE"
manifest_remove "com.sec.android.provider.badge.permission.READ"
manifest_remove "com.sec.android.provider.badge.permission.WRITE"
manifest_remove "com.htc.launcher.permission.READ_SETTINGS"
manifest_remove "com.htc.launcher.permission.UPDATE_SHORTCUT"
manifest_remove "com.sonyericsson.home.permission.BROADCAST_BADGE"
manifest_remove "com.sonymobile.home.permission.PROVIDER_INSERT_BADGE"
manifest_remove "com.anddoes.launcher.permission.UPDATE_COUNT"
manifest_remove "com.majeur.launcher.permission.UPDATE_BADGE"
manifest_remove "com.huawei.android.launcher.permission.CHANGE_BADGE"
manifest_remove "com.huawei.android.launcher.permission.READ_SETTINGS"
manifest_remove "com.huawei.android.launcher.permission.WRITE_SETTINGS"
manifest_remove "com.oppo.launcher.permission.READ_SETTINGS"
manifest_remove "com.oppo.launcher.permission.WRITE_SETTINGS"
manifest_remove "me.everything.badger.permission.BADGE_COUNT_READ"
manifest_remove "me.everything.badger.permission.BADGE_COUNT_WRITE"
manifest_remove "com.huawei.appmarket.service.commondata.permission.GET_COMMON_DATA"
manifest_remove "android.permission.ACCESS_ADSERVICES_AD_ID"
manifest_remove "com.android.vending.INSTALL_REFERRER"
manifest_remove "android.adservices.AD_SERVICES_CONFIG"
manifest_remove "android.ext.adservices"
manifest_remove "android.permission.QUERY_ALL_PACKAGES"
manifest_remove "com.vnpay.ticketlib.Activity.VMB20MainActivity"
