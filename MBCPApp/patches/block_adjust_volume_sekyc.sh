#!/usr/bin/env bash
# PATCHNAME: Block adjust volume on sEKYC
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh


cp -f "$DIRPATH"/blob_patches/noadjust_volume_sekyc/activity_singalarity_screen3.xml mbapk/mbapk_unpacked/resources/package_1/res/layout
cp -f "$DIRPATH"/blob_patches/noadjust_volume_sekyc/SingalarityEkycAudioManager.smali mbapk/mbapk_unpacked/smali/classes3/com/singalarity/ekyc/


