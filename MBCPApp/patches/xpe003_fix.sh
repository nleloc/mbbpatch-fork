#!/usr/bin/env bash
# PATCHNAME: XPE003 Fix 
# MAXVER: 6.4.67
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

# XPE003 error fixes
sed_libapp 's|isEnableTimeout|isEnableLockout|'
sed_libapp 's|zdefend_config|fua0am0_config|'
