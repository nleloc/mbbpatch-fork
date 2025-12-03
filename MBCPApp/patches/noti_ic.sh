#!/usr/bin/env bash
# PATCHNAME: Proper notification icon
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

res="$DIRPATH/mbapk/mbapk_unpacked/resources/package_1/res/"
mfs="$DIRPATH/mbapk/mbapk_unpacked/AndroidManifest.xml"
blob="$DIRPATH/blob_patches/noti_ic/"

cp -r "$blob"/* "$res"

sed -i '0,/type=.font/s|^.*type="font".*|  <public id="0x7f080367" type="drawable" name="ic_noti_star" />\n&|' "$res"/values/public.xml

sed -i 's|^.*android:name="flutterEmbedding".*|  <meta-data android:name="com.google.firebase.messaging.default_notification_icon" android:resource="@drawable/ic_noti_star" />\n  <meta-data android:name="com.google.firebase.messaging.default_notification_color" android:resource="@color/colorAccent" />\n&|g' "$mfs"
sed -i 's|^.*com.google.firebase.messaging.FirebaseMessagingRegistrar.*|      <meta-data android:name="com.google.firebase.messaging.default_notification_icon" android:resource="@drawable/ic_noti_star" />\n      <meta-data android:name="com.google.firebase.messaging.default_notification_color" android:resource="@color/colorAccent" />\n      <meta-data android:name="com.google.firebase.components:com.google.firebase.messaging.default_notification_icon" android:resource="@drawable/ic_noti_star" />\n      <meta-data android:name="com.google.firebase.components:com.google.firebase.messaging.default_notification_color" android:resource="@color/colorAccent" />\n&|g' "$mfs"
