#!/usr/bin/env bash
# shellcheck disable=SC2295
# vim: expandtab tabstop=4 shiftwidth=4

[ -n "$DIRPATH" ] || {
    echo 'ERROR : $DIRPATH not set, script ran standalone?'
    exit 1
}

. "$DIRPATH/common.sh"

echo '#!/usr/bin/env bash

[ -n "$DIRPATH" ] || {
    err "DIRPATH not set, script ran standalone?"
    exit 1
}

[ -d "$DIRPATH"/mbapk/mbapk_unpacked ] || {
    err "[mbapk_unpacked] folder not found, please unpack APK first !"
    exit 127
}

. "$DIRPATH/common.sh"

applyPatch() {
    blocker="mbapk/mbapk_unpacked/root/assets/mbcp_info/pfi"
    if [ -f "$blocker" ] ; then
        block_msg="$(cat $blocker)"
        err "Further patching is blocked by [$block_msg]. If you want to continue, cleanup the current unpacked apk, patch again from scratch."
        return 36
    fi

    dotinf="mbapk/mbapk_unpacked/root/assets/mbcp_info/$1.inf"
    cancel_msg="Patch [$opt] was cancelled by the user"

    if [ -f "$dotinf" ]; then
        confirm "This patch ($opt [$1]) seems to have already been applied, are you sure you want / need to reapply it?" || {
            warn "$cancel_msg"
            return 69
        }
    fi

    good "Applying patch [$opt]"
    if bash "$2" ; then
        good "Patch [$opt] applied successfully"
        echo "Patch applied by MBCPApp Patcher on $(uname -s -r) with commit : $(git rev-parse --short HEAD) at $(date)." > "$dotinf"
    elif [ "$?" -eq "69" ] ; then
        warn "$cancel_msg"
    else
        err "Patch [$opt] failed"
    fi
}

echo "--------------------------
Patch list for MBCPApp :"
PS3="Select patch options : "' > patch.sh

for f in patches/*.sh ; do
    # name without suffix and prefix
    n="$(rstrip "$f" '.sh')"
    n="$(lstrip "$n" 'patches/')"

    # patch infos
    pname="$(getvar "2" "# PATCHNAME: " "$f")"
    maxver="$(getvar "3" "# MAXVER: " "$f")"
    minver="$(getvar "4" "# MINVER: " "$f")"

    pname=${pname//[^a-zA-Z0-9_& ]/}
    minver="${minver//[^0-9.]/}"
    maxver="${maxver//[^0-9.]/}"

    #echo "$f|$pname|$minver|$maxver"

    [ -n "$pname" ] || {
        warn "[parser] $f missing PATCHNAME, not adding"
        continue
    }
    [ -n "$minver" ] && {
        chk="${minver//[^.]}"
        [ "${#chk}" -ne 2 ] && {
            warn "[parser] skipping [$pname] with malformed minver"
            continue
        }

        minmajor="$(bb_split "$minver" '.' '0')"
        minminor="$(bb_split "$minver" '.' '1')"
        minpatch="$(bb_split "$minver" '.' '2')"

        [ "$(( $(mb_ver 0) * 10000 + $(mb_ver 1) * 100 + $(mb_ver 2) ))" -lt \
          "$((    minmajor * 10000 +    minminor * 100 +    minpatch ))" \
        ] && {
        info "[parser] skipping [$pname] as current version is lower than patch version clamp"
        continue ; }
    } || :
    [ -n "$maxver" ] && {
        chk="${maxver//[^.]}"
        [ "${#chk}" -ne 2 ] && {
            warn "[parser] skipping [$pname] with malformed maxver"
            continue
        }

        maxmajor="$(bb_split "$maxver" '.' '0')"
        maxminor="$(bb_split "$maxver" '.' '1')"
        maxpatch="$(bb_split "$maxver" '.' '2')"

        [ "$(( $(mb_ver 0) * 10000 + $(mb_ver 1) * 100 + $(mb_ver 2) ))" -gt \
          "$((    maxmajor * 10000 +    maxminor * 100 +    maxpatch ))" \
        ] && {
        info "[parser] skipping [$pname] as current version is higher than patch version clamp"
        continue ; }
    } || :

    opts_arr+=" '$pname'"
    append+="    '$pname') applyPatch $n $f ;;
"
done

opts_arr+=" 'Exit'"
#echo "$opts_arr"
echo "select opt in $opts_arr" >> patch.sh
echo 'do
  case "$opt" in' >> patch.sh
echo "$append
    'Exit' ) exit ;;
  esac
done" >> patch.sh
