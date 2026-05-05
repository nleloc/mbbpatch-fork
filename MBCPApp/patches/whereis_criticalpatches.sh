#!/usr/bin/env bash
# PATCHNAME: Where is VTAP & Zimperium bypass
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

echo "--------------Why Zimperium and VTAP bypass patches disappeared?--------------"
warn "VTAP and Zimperium bypass is restricted to v6.4.66 only due to MB limitations to v6.4.67+"
info "They added stronger check, it uses SHA-256 to check all of dex files and libraries, if it does not match\n"
info "The app will refuse to login with GW934 error. There is already a bypass in the past, but is fixed."
info "A newer bypass is planned, but I don't have time. I am a student, and in 12th grade, time does not allow me."
echo "------------------------------------------------------------------------------"
echo "So what next???"
echo "From Patcher, just apply other patches, and repack APK"
echo "Since the local root detection model is deleted, you can use my MBZDefend-Fix module"
echo "It uses another way to bypass Zimperium check, and still works :)"
echo "For VTAP bypass? No way, but it is still easily to hide. It will comeback once I achieve another checksum bypass."
exit 169
