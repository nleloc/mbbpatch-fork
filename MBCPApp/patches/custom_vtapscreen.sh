#!/usr/bin/env bash
# PATCHNAME: Custom VTAP screen
# MAXVER:
# MINVER: 52
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

cp -f 'blob_patches/customvtap/custom_vtapdialog_activity.xml' 'mbapk/mbapk_unpacked/resources/package_1/res/layout/activity_vgfull_screen_dialog.xml'
