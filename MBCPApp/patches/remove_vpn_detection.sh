#!/usr/bin/env bash
# PATCHNAME: Remove VPN detection
# MAXVER: 6.4.67
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

sed_libapp 's|vpn|app|g'
