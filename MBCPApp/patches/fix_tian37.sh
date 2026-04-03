#!/usr/bin/env bash
# PATCHNAME: Tian37 Fix
# MAXVER:
# MINVER: 6.4.84
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

sed_libtian37 's|/proc/mountsb7/proc/fs/jbd2/|                            |'
sed_libtian37 's|com.rifsxd.ksunext|                  |'
sed_libtian37 's|/proc/fs/jbd2/loop*8 2>/dev/null|                                |'
sed_libtian37 's|me.weishu.kernelsu|                  |'
sed_libtian37 's|/proc/self/maps/|               |'
sed_libtian37 's|/data/adb/modules|/sdcard/Downloads|'
