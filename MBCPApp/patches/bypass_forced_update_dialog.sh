#!/usr/bin/env bash
# PATCHNAME: Bypass forced update dialog
# MAXVER: 6.4.67
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

# Block forced update dialog (does not bypasses GW525)
sed_libapp 's|version_check_update_config|version_check_nonapp_config'
sed_libapp 's|currentVersion|currentMBCPver|'
sed_libapp 's|minVersion|appVersion|'

