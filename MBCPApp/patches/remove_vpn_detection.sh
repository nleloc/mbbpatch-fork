#!/usr/bin/env bash
# PATCHNAME: Remove VPN detection
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

sed_libapp 's|vpn|app|g'
