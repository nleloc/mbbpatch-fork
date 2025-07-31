#!/usr/bin/env bash
# vim: expandtab tabstop=4 shiftwidth=4

# imported from https://github.com/dylanaraps/pure-bash-bible
bb_split() {
    # Usage: split "string" "delimiter"
    IFS=$'\n' read -d "" -ra arr <<< "${1//$2/$'\n'}"
    # printf '%s\n' "${arr[@]}"
    printf '%s\n' "${arr[$3]}"
}

# imported from https://github.com/dylanaraps/pure-sh-bible
lstrip() {
    # Usage: lstrip "string" "pattern"
    printf '%s\n' "${1##$2}"
}

# imported from https://github.com/dylanaraps/pure-sh-bible
rstrip() {
    # Usage: rstrip "string" "pattern"
    printf '%s\n' "${1%%$2}"
}

getvar() {
    # Usage: getline "n" "pattern" "file"
    while IFS= read -r line; do
        i=$((i+1))
        [ "$i" = "$1" ] && printf '%s\n' "${line##$2}" && return
    done < "$3"
}

sed_libapp() {
    target=$(bb_split "$1" '|' '1')
    replacement=$(bb_split "$1" '|' '2')
    (
        sed -i "$1" "$DIRPATH"/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so \
            "$DIRPATH"/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    ) && info "[sed_libapp] [$target] -> [$replacement]" || warn "[sed_libapp] replacing [$target] failed !"
}

# libdesignersactivists.so are former known as libZDefend.so
# MB moved it to libdesignersactivists.so since v6.4.48+
# this currently is placeholder, and will be implemented later
sed_libzdefend() {
    target=$(bb_split "$1" '|' '1')
    replacement=$(bb_split "$1" '|' '2')
    (
        sed -i "$1" "$DIRPATH"/mbapk/mbapk_unpacked/lib/arm64-v8a/libdesignersactivists.so \
            "$DIRPATH"/mbapk/mbapk_unpacked/lib/armeabi-v7a/libdesignersactivists.so
    ) && info "[sed_libzdefend] [$target] -> [$replacement]" || warn "[sed_libzdefend] replacing [$target] failed !"
}

manifest_remove() {
    sed -i "/$1/d" "$DIRPATH"/mbapk/mbapk_unpacked/AndroidManifest.xml && \
        info "[manifest_remove] removing $1" || \
        warn "[manifest_remove] removing $1 failed"
}

get_mb_ver() {
    a="$(grep -m1 'versionName' "$DIRPATH"/mbapk/mbapk_unpacked/apktool.yml)"
    a="$(bb_split "$a" ':' '1')"
    bb_split "$a" '.' '2'
}

good() {
    echo -e "\033[32m[$(date +"%H:%M:%S:%2N")] [INFO] $1\033[0m"
}

info() {
    echo "[$(date +"%H:%M:%S:%2N")] [INFO] $1"
}

warn() {
    echo -e "\033[33m[$(date +"%H:%M:%S:%2N")] [WARN] $1\033[0m"
}

err() {
    echo -e "\033[31m[$(date +"%H:%M:%S:%2N")] [ERROR] $1\033[0m"
}
