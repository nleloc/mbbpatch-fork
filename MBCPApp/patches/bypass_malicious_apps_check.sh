#!/usr/bin/env bash
# PATCHNAME: Bypass malicious app check
# MAXVER: 6.4.67
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

# Bypass malicious apps check
sed_libapp 's|whitelistService|Servicewhitelist|'

