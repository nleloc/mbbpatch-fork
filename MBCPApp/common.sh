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

# imported from https://github.com/dylanaraps/pure-bash-bible
strip_all() {
    # Usage: strip_all "string" "pattern"
    printf '%s\n' "${1//$2}"
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
        sed -i "$1" "$DIRPATH"/mbapk/mbapk_unpacked/root/lib/arm64-v8a/libapp.so \
            "$DIRPATH"/mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libapp.so
    ) && info "[sed_libapp] [$target] -> [$replacement]" || warn "[sed_libapp] replacing [$target] failed !"
}

sed_libtian37() {
    target=$(bb_split "$1" '|' '1')
    replacement=$(bb_split "$1" '|' '2')
    (
        sed -i "$1" "$DIRPATH"/mbapk/mbapk_unpacked/root/lib/arm64-v8a/libanTian37.so \
            "$DIRPATH"/mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libanTian37.so
    ) && info "[sed_libtian37] [$target] -> [$replacement]" || warn "[sed_libtian37] replacing [$target] failed !"
}

prioritylogo() { 
	if [ -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/a_logo_img_addon.webp' ]
then
	warn "App newer than v6.4.79+ ! Using enforced logo instead"
	info "Copying [ic_logo_mb_text_enforced.svg]..."
	cp -f 'blob_patches/semipriority/ic_logo_mb_text_enforced.svg' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/svgs/ic_logo_mb_text.svg'
else
	info 'Copying [ic_logo_mb_text.svg]...'
	cp -f 'blob_patches/semipriority/ic_logo_mb_text.svg' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/svgs/'
fi
}

enforcemb() {
    if [ -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/customize_img_changeImageContent.webp' ]
then
    info "App newer than v6.4.84 ! Using new search logo!"
    # Replace MB AI search button with normal search button
    cp -f 'blob_patches/searchicon/search_718.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/img_mbai_textLogo.webp'
    cp -f 'blob_patches/searchicon/search_718.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/img_mbai_textLogo.private.webp'
    # Adapt new changes with v6.4.75
    cp -f 'blob_patches/searchicon/search_718.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/mbai_img_search.webp'
    cp -f 'blob_patches/searchicon/search_718.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/mbai_img_search.private.webp'
else
    info "App older than v6.4.83 ! Using old search logo!"
    # Replace MB AI search button with normal search button
    cp -f 'blob_patches/searchicon/search.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/img_mbai_textLogo.webp'
    cp -f 'blob_patches/searchicon/search.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/img_mbai_textLogo.private.webp'
    # Adapt new changes with v6.4.75
    cp -f 'blob_patches/searchicon/search.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/mbai_img_search.webp'
    cp -f 'blob_patches/searchicon/search.png' 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/mbai_img_search.private.webp'
fi
}

# libdesignersactivists.so are former known as libZDefend.so
# MB moved it to libdesignersactivists.so since v6.4.48+
# this currently is placeholder, and will be implemented later
sed_libzdefend() {
    target=$(bb_split "$1" '|' '1')
    replacement=$(bb_split "$1" '|' '2')
    (
        sed -i "$1" "$DIRPATH"/mbapk/mbapk_unpacked/root/lib/arm64-v8a/libdesignersactivists.so \
            "$DIRPATH"/mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libdesignersactivists.so
    ) && info "[sed_libzdefend] [$target] -> [$replacement]" || warn "[sed_libzdefend] replacing [$target] failed !"
}

iszdefend() {
    if [[ -f mbapk/mbapk_unpacked/root/lib/arm64-v8a/libZDefend.so ]]; then
        info "[libZDefend.so] is found! App resources extraction required!"
    else
        info "[libZDefend.so] is NOT found! No need app resources extraction :)"
    fi
}

manifest_remove() {
    sed -i "/$1/d" "$DIRPATH"/mbapk/mbapk_unpacked/AndroidManifest.xml && \
        info "[manifest_remove] removing $1" || \
        warn "[manifest_remove] removing $1 failed"
}

pblock() {
    blocker="$DIRPATH/mbapk/mbapk_unpacked/root/assets/mbcp_info/pfi"
    echo "$1" > "$blocker"
}

get_mb_ver() {
    a="$(grep -m1 'android:versionName' "$DIRPATH"/mbapk/mbapk_unpacked/AndroidManifest.xml | tr ' ' '\n' | grep -m1 'android:versionName')"
    a="$(bb_split "$a" '=' '1')"
    a="$(strip_all "$a" '"')"
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

confirm() {
    read -rp "$1
Press Y to confirm, press any other keys to cancel: " val
    case "$val" in
        Y|y|yes|Yes) : ;;
        *) return 69 ;;
    esac
}


