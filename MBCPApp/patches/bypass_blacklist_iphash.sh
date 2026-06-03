#!/usr/bin/env bash
# PATCHNAME: Bypass blacklist IP hashes 
# MAXVER: 6.4.67
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

sed_libapp 's|list_blocked_ip_hash|list_ip_blocked_hash|'
