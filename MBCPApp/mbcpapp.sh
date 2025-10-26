#!/usr/bin/env bash
# vim: expandtab tabstop=4 shiftwidth=4

FILEPATH=$(readlink -f "$0")
DIRPATH=$(dirname "$FILEPATH")
export DIRPATH

# Initial startup
cd "$DIRPATH"
mkdir -p "$DIRPATH"/mbapk
mkdir -p "$DIRPATH"/mbcpapp_apk
mkdir -p "$DIRPATH"/tools
clear

. "$DIRPATH/common.sh"

# Check if user is running on an actual Linux environment
if uname -a | grep -i Linux ; then
    info "You have Linux environment :)"
fi

# Check if figlet exists or not
if command -v figlet ; then
    FIGLET=figlet
else
    warn "figlet not found, ignoring banner !"
    FIGLET=:
fi

# Check if java exists
if ! java -version ; then
    err "Java not found !!!"
    info "Please install Java for your Linux distribution ! "
    exit 127
fi

# Check if wget exists
if ! wget --version ; then
    err "wget not found !!!"
    info "Please install wget for your Linux distribution !"
    exit 127
fi

# Check if xmlstarlet exists
if ! xmlstarlet --version ; then
    err "xmlstarlet not found, please install it"
    exit 127
fi

COMMIT="$(git rev-parse --short HEAD)"
BRANCH="$(git rev-parse --abbrev-ref HEAD)"
clear

mbshield_found='MBShield found on [mbapk_unpacked/assets/mbshield.szip] !!!
Patching operation is limited due to MBShield :(
You need to extract assets from Android device for some patching operation to works properly !!!'

mbshield_not_found='MBShield NOT found on [mbapk_unpacked/assets/]
Patching operation are all not limited at all !
Asset extraction are not needed :)'

download_tools() {
    apktool_link="https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.12.0.jar"
    apkeditor_link="https://github.com/REAndroid/APKEditor/releases/download/V1.4.5/APKEditor-1.4.5.jar"

    cd tools && rm -rf ./*.jar
    wget -q --show-progress -O apktool.jar "$apktool_link" || err "downloading apktool failed"
    wget -q --show-progress -O apkeditor.jar "$apkeditor_link" || err "downloading apkeditor failed"
    cd .. 
}

copy_assets() {
    adb shell su -c cp -rf "/data/user/0/com.mbmobile/files/$1" /sdcard/assets
}

is_unpacked() {
    [ -d "$DIRPATH"/mbapk/mbapk_unpacked ] || {
        err "[mbapk_unpacked] not found ! Please unpack APK first !" ; return 127
    }
}
is_unpacked_lib() {
    [ -d "$DIRPATH"/mbapk/mbapk_unpacked/root/lib ] || {
        err "[mbapk_unpacked/root/lib] folder not found ! Please unpack APK first !" ; return 127
    }
}
apktool_exist() {
    [ -f "$DIRPATH"/tools/apktool.jar ] || { err "apktool not found" ; return 127 ; }
}
apkeditor_exist() {
    [ -f "$DIRPATH"/tools/apkeditor.jar ] || { err "apkeditor not found" ; return 127 ; }
}
mb_apk_exist() {
    ls "$DIRPATH"/mbapk/*.apk >/dev/null 2>&1 || {
        err "No *.apk found in [mbapk] folder, please copy apk to [mbapk] folder !"
        err "If you got apks from eMBee APKs, use [Convert apks to apk] option !"
    }
}

unpack_mbcp() {
    local - ; set -e
    { apkeditor_exist && mb_apk_exist ; } || return 1
    rm -rf 'mbapk/mbapk_unpacked'
    java -jar tools/apkeditor.jar d -i mbapk/*.apk -o mbapk/mbapk_unpacked || { err "Unpacking failed !" ; return 1 ; }
    info "Cleaning useless files..."
    rm -rf 'mbapk/mbapk_unpacked/root/assets/_4A9w8flncUrhDOG8dyqLi_azBTYT3PlSXz0hiCzRQA_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/0QDl12M5S2hKxoKF4cNI4kEX1qDQRMiOd34TXjSjy4M_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/2GcdAWdkXGgxPfHSIhzLkrkf2LU6Z_cuZfUWnczoEHw_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/BiLlLhV4LAy_y_rvwmD82q_4yN_liwgN1X0mfwfqTeE_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/c7uFHgsHzlQ_T524_4N3h9neXvtcUg0m1ERhEjFpPI8_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/ccBu4aSM_mSaMBpFvr14pizu6EGMvwRiZltU_zVJMz0_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/DcM3z3tolULDhbn8YrUE7hxOlxZx2oFC5yNQFG1SX9k_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/fPGzhQFvISia1NiVGU8vQx9IpRm63E4_1Xv0Z2ypWUE_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/g9x205p_On9_RR4kI_GdsoQ2pfSrV_OQXSopshyhYVk_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/GXNv8xc5IcVF6TyUgjJpyYFeyHGqUqN7ZS0X_2WRbEE_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/H8leCCp85eX0YRvo4WCzqF5MEuj2_9ix6zL2bjnj6hk_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/Hput_BfAb8ftOt8hvazec24Eqk0gC5DDY6qALJMLtcI_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/MZuOOtdhO6pcGnZ5_kqMPh56hL3LqawBZd05vfIivww_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/noNmNoHJ0EUpV0TiKtyRPIVWI0im6K1RPIq3N_q0ho0_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/oOot9yCPD3GFqBix7JXjoz4Uui3k3NrwI8wHRlOpn4s_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/rqfr7ucXEZM4vIIYYPHXlo6IG1iEad_H61Z4bbEMR3s_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/Sje9R7eg_A4wlgbLNHwXS5xNFmS5qaoPnJ6Vg0RnIQ8_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/t8_bY_8ibDPQ9rngMwnd7WFI_uqoPlht9nBi26_llbw_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/VipqZ50mSUd28eIlPS_2t31IZ6tY24fl8sSl5YsQrbI_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/vLpH08bnGzkpsq_MmUdHqkh3bjrVN5tutp6s4jscm3w_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/WZ7CC4mxgoVWzgm8AO7rbOneE6TkqXwT2YV3htdswEQ_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/x_uYtCXdh_oYw_XLfZQkX10Bcqq2HFK3q7v1dJVw3zM_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/Y83jllvBi79vZIh2_UNtyo3_Lvd94lqie_q1dc5O3j0_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/ZN6CRAqtR7CKp7LFoivhHDbCS6iAtrEW6_sLvrfWgEM_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/ZOKOK1a6XCiqYb_a8bYPE9c0rjUf7_n7k77YxX5Ypdw_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/zxHdhL4_ZEQLQeo8R2DzSYl9PGss_cKSCQTcZGBtVmU_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/jNMI79raTvV7VHN5Vrzw4Xs66YP_a1ftP9SmUB24DYg_'
    # New zimperium for v6.4.66+
    rm -rf 'mbapk/mbapk_unpacked/root/assets/_4A9w8flncUrhDOG8dyqLi_azBTYT3PlSXz0hiCzRQA_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/2GcdAWdkXGgxPfHSIhzLkrkf2LU6Z_cuZfUWnczoEHw_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/5ZgPqFnAWhQNY00pFq2V1t1CQ2Pu_v5fmZ1z_J8mpRc_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/BiLlLhV4LAy_y_rvwmD82q_4yN_liwgN1X0mfwfqTeE_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/ccBu4aSM_mSaMBpFvr14pizu6EGMvwRiZltU_zVJMz0_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/DcM3z3tolULDhbn8YrUE7hxOlxZx2oFC5yNQFG1SX9k_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/eB0ZLvEtv8_qoOAcmcB19tx0pnT_RXKn5WU3rOVgK4k_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/fPGzhQFvISia1NiVGU8vQx9IpRm63E4_1Xv0Z2ypWUE_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/g9x205p_On9_RR4kI_GdsoQ2pfSrV_OQXSopshyhYVk_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/GXNv8xc5IcVF6TyUgjJpyYFeyHGqUqN7ZS0X_2WRbEE_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/H8leCCp85eX0YRvo4WCzqF5MEuj2_9ix6zL2bjnj6hk_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/jNMI79raTvV7VHN5Vrzw4Xs66YP_a1ftP9SmUB24DYg_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/L99mUhn96s4yqqm5R9PfAaEKDqXeeymBiZ6LXsL7Q6g_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/MZuOOtdhO6pcGnZ5_kqMPh56hL3LqawBZd05vfIivww_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/noNmNoHJ0EUpV0TiKtyRPIVWI0im6K1RPIq3N_q0ho0_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/PFG4UoVDN_g9I8eyvXTlS_1wTyyW7MSBQgALLx3oais_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/rqfr7ucXEZM4vIIYYPHXlo6IG1iEad_H61Z4bbEMR3s_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/VipqZ50mSUd28eIlPS_2t31IZ6tY24fl8sSl5YsQrbI_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/Vk2u994oKcVWweAMd1MiPV1CqM_arKjtcMTiEstc_tQ_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/WZ7CC4mxgoVWzgm8AO7rbOneE6TkqXwT2YV3htdswEQ_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/x_uYtCXdh_oYw_XLfZQkX10Bcqq2HFK3q7v1dJVw3zM_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/Y83jllvBi79vZIh2_UNtyo3_Lvd94lqie_q1dc5O3j0_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/yUIRfgijg_pUl2cxzI4uUChxQx0eaY_KqL0HkZDq9_8_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/zK8ofKgkgZpE0H2lDulbI7VQeUuxZFk7PXXPHT1fQqE_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/ZN6CRAqtR7CKp7LFoivhHDbCS6iAtrEW6_sLvrfWgEM_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/ZOKOK1a6XCiqYb_a8bYPE9c0rjUf7_n7k77YxX5Ypdw_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/zxHdhL4_ZEQLQeo8R2DzSYl9PGss_cKSCQTcZGBtVmU_'
    # New zimperium for v6.4.67+
    rm -rf 'mbapk/mbapk_unpacked/root/assets/2lclXWtX58GC8tXgJr1E_tmzpvS_K1Q7_0jHeXBaECc_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/EHFtsAf7MYH_M7kQF1YX8LeWfU1_RjdRH62oJRE0v38_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/KZsyhtgSOXgFDPIf88NF5svaDH3xQ8feGsAQiy1c9_s_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/mT0VvAZ00szUCjj1fIELzEtu8jyGYugItWXzMzctw5s_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/nH9wnyFkomjAn0FTQ_yjrJV_GNWjgWxVgbb8jcJP4HY_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/PZQ2Z8TvSXXOMX3cIQ2_GUS5YMkOTffOx4OJGCrspa0_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/Q69Adz_RZ_IeUuPTQYy90NvmZgYOhihkaYyXz_zZShw_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/RqFhgUA_YBZkLQQ_fCTirgXJUoOFPqP97IMjQbilqD4_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/t8NSiy6tAaumDccCfaZJufNIdIbRzIki5BH3ob2WBgY_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/U8M8_vW2i8G_dLkEBAPC1ARUe5wGRu8ebXKFfhZMvOw_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/uEmV2ugmVX1f4hLUo7L5kR4ukfV8Y04sHlpabtch9HE_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/X7Y6j7fmtuE5o33sw4Sh6Z97oMv_uaNPyZJ6PjF6l5M_'
    # New zimperium for v6.4.72+
    rm -rf 'mbapk/mbapk_unpacked/root/assets/Z1YbTXaPlMjbmWCKXXD0m4wkWyE0I6xxDebGhXz5igk_'
    rm -rf 'mbapk/mbapk_unpacked/root/assets/zxwCzUaZ8itWQeAMKtyu52RbljJe1Pd8GuV7H4RPsy4_'

    info "Creating [mbcp_info] folder..."
    mkdir 'mbapk/mbapk_unpacked/root/assets/mbcp_info/'

    info "Reformatting AndroidManifest.xml with xmlstarlet..."
    mv "$DIRPATH"/mbapk/mbapk_unpacked/AndroidManifest.xml "$DIRPATH"/mbapk/mbapk_unpacked/AndroidManifest.xml.orig
    xmlstarlet fo "$DIRPATH"/mbapk/mbapk_unpacked/AndroidManifest.xml.orig > "$DIRPATH"/mbapk/mbapk_unpacked/AndroidManifest.xml
}

repack_mbcp() {
    { apktool_exist && is_unpacked ; } || return 1
    info "Repacking APK..."
    echo "Compiled by MBCPApp Patcher on $(uname -s -r) with commit $COMMIT at $(date). That's all xD" > 'mbapk/mbapk_unpacked/root/assets/mbcp_info/mbcpinfo.txt'
    (
        set -e
        java -jar tools/apkeditor.jar b -i 'mbapk/mbapk_unpacked' -o mbcpapp_apk/MBCP_Flutter_TMP.apk
        info "Processing APK signature scheme v2/v3..."
        rm 'mbcpapp_apk/MBCP_Flutter_SelfPatched.apk'
        java -jar tools/apkeditor.jar b -t sig -i 'mbcpapp_apk/MBCP_Flutter_TMP.apk' -sig 'mbsig/signatures' -o 'mbcpapp_apk/MBCP_Flutter_SelfPatched.apk'
        rm 'mbcpapp_apk/MBCP_Flutter_TMP.apk'
    ) && {
        good 'Completed! Repacked APK are saved as [mbcpapp_apk/MBCP_Flutter_SelfPatched.apk] !!!'
        good 'Install and trying to open it when ಠ‿ಠ'
        good 'If you are facing issues, report it on Telegram [@mbcposs] or Disroot Forgejo : mbbpatch !!'
    } || err 'ERROR : Repacking failed !'
}

check_mbshield() {
    is_unpacked || return 1
    if [ -f "$DIRPATH"/mbapk/mbapk_unpacked/root/assets/mbshield.szip ]
    then
        info "$mbshield_found"
    else
        info "$mbshield_not_found"
    fi
}

convert_apks() {
    local - ; set -e
    ls "$DIRPATH"/mbapk/*.apks >/dev/null 2>&1 || {
        err "APKs missing, cannot continue !"
        return 1
    }
    apkeditor_exist
    info "Converting apks to apk..."
    java -jar tools/apkeditor.jar m -i mbapk/*.apks 
    mv mbapk/*.apk mbapk/MBOriginal.apk
    info 'Cleaning left over [apks] files...'
    rm -f mbapk/*.apks
    info "You probably can continue to unpack APK!"
}

run_patcher() {
    is_unpacked_lib && bash ./parse.sh && bash ./patch.sh
}

run_legacy_patcher() {
    is_unpacked_lib && bash ./legacy_patch.sh
}

# Banner 
$FIGLET "MBCPApp Patcher"
echo -------------------------------------------------------------
echo "Patching tool for MB Bank app with Flutter engine (v6.4.0+)"
echo "Original APK must be inside [mbapk] folder !"
echo -------------------------------------------------------------
echo "Current commit : $COMMIT ($BRANCH)"
echo "Source code : https://git.disroot.org/mbcp/mbbpatch.git"
echo "Made possible by Cuynu's brain with love <3"
echo -------------------------------------------------------------

# Main functions
PS3='Please select options to continue : '
select opt in 'Pull latest commit' 'Unpack APK' 'Convert apks to apk' 'Repack APK' 'Install patched app' 'MBShield Check' 'Patch App' 'Legacy patches' 'Extract assets [ROOT]' 'Launch MBCPApp/MBBank' 'Force close MBCPApp/MBBank' 'Clear MBCPApp/MBBank app data' 'Clean patched app' 'Download tools' 'Exit'
do
    case "$opt" in
        'Download tools' )   download_tools ;;
        'Unpack APK' )       unpack_mbcp ;;
        'Repack APK' )       repack_mbcp ;;
        'Patch App' )        run_patcher ;;
        'Legacy patches' )   run_legacy_patcher ;;
        'MBShield Check' )   check_mbshield ;;
        'Convert apks to apk' ) convert_apks ;;
        'Extract assets [ROOT]' )
    info 'To extract encrypted assets [if current app has MBShield protection] you need rooted device'
    info 'And trigger a bulit-in app assets extraction !'
    echo -------------------------------------------
    PS3='Select options continue, or [3] to quit : '
    select opt in 'Launch MBCPApp/MBBank' 'Extract assets' 'Exit'
do
    	if [ "$opt" == 'Launch MBCPApp/MBBank' ]; then
        adb shell am start -n com.mbmobile/io.flutter.plugins.MainActivity
        info 'After app started, you MUST need to trigger assets extraction'
        info 'By trigger eKYC authetication with reset account password option or register DigitalOTP'
        info 'After you got into eKYC screen, close the app, then use Extract assets option to extract assets.'
        elif [ "$opt" == 'Extract assets' ]; then
        if [ -d "$DIRPATH"/mbapk/mbapk_unpacked/ ]
then
        if [ -f "$DIRPATH"/mbapk/mbapk_unpacked/root/assets/mbshield.szip ]
then
        info "MBShield found ! Continuing !!!"
        warn 'You MUST grant root access to [com.android.shell] in order to extract assets !'
        info 'Trying to extract assets...'
        adb shell am force-stop com.mbmobile
        adb shell rm -rf /sdcard/assets
        adb shell mkdir /sdcard/assets
        copy_assets flutter_assets
        copy_assets dexopt
        copy_assets font
        copy_assets mbshield
        copy_assets media_init_data
        copy_assets mlkit_barcode_models
        copy_assets models_bundled
        copy_assets mwebview
        copy_assets zfiles
        copy_assets crashlytics-build.properties
        copy_assets firmware
        copy_assets insider.ttf
        copy_assets dlangV5.dat
        copy_assets dlangV5.en.dat
        copy_assets policy0
        copy_assets policy1
        copy_assets policy2
        copy_assets policy3
        copy_assets policy4
        copy_assets policy5
        copy_assets policy6
        copy_assets policy8
        copy_assets policy9
        copy_assets policym
        copy_assets profile
        copy_assets rulesV5.dat
        copy_assets sgprofile
        copy_assets signature
        copy_assets smart_ekyc_finall.zip
        copy_assets version.json
        copy_assets vkeylicensepack
        copy_assets voscodesign.vky
        info 'Copying assets...'
        adb pull /sdcard/assets mbapk/mbapk_unpacked/root/ && good "Assets copied to [mbapk_unpacked/root/] !" || err "Failed to copy assets ! Please try again." 
        info 'Removing leftover assets...'
        adb shell rm -rf /sdcard/assets && good "Removed leftover assets !" || err "Failed to remove leftover assets from device !"
        else
        info "MBShield not found ! No need to extract assets !"
        fi
else
        err "Can't find [mbapk/mbapk_unpacked] folder, cannot continue ! "
        err "Please unpack APK first !"
        fi

        elif [ "$opt" == 'Exit' ]; then
        clear
        bash mbcpapp.sh
       break
        	fi
done
        ;;
        'Clear MBCPApp/MBBank app data' )
            info "Clearing [com.mbmobile] data..."
            adb shell pm clear com.mbmobile
            adb shell am start -n com.mbmobile/io.flutter.plugins.MainActivity
            info "Current logged in account will remain present, even if app data is cleared !"
        ;;
    
        'Pull latest commit' )
            git pull origin mbflutter
            info "Please run patcher again !"
            exit
        ;;
        'Launch MBCPApp/MBBank' )
            adb shell am start -n com.mbmobile/io.flutter.plugins.MainActivity
        ;;
        'Force close MBCPApp/MBBank' )
            adb shell am force-stop com.mbmobile
        ;;
        'Clean patched app' )
            info "Cleaning, please wait..." 
            rm -f mbcpapp_apk/*.apk
            rm -f mbcpapp_apk/*.zip
            rm -f mbapk/*.apk
            rm -f mbapk/*.apks
            rm -rf mbapk/mbapk_unpacked
            info "Cleared !"
        ;;
        'Install patched app' )
    info 'Select your patched version to continue'
    PS3='Select patched version to continue, or [4] to quit : '
    select opt in 'App patched with newer version [v6.4.59+]' 'App patched with specific version' 'App patched with older version [v6.4.55 or lower]' 'Exit'
do

        if [ "$opt" == 'App patched with newer version [v6.4.59+]' ]; then
        if [ -f "$DIRPATH"/mbcpapp_apk/MBCP_Flutter_SelfPatched.apk ]
    then 
        warn "MBCP Helper / CorePatch must be installed with disable digest verify on !!!"
        warn "You must have connected Android device with USB debugging turned on in order to install !!!"
        adb kill-server
        adb start-server
        adb install 'mbcpapp_apk/MBCP_Flutter_SelfPatched.apk'
        adb shell am start -n com.mbmobile/io.flutter.plugins.MainActivity
    else
        err "[MBCP_Flutter_SelfPatched.apk] not found, cannot continue !"
    fi

    	elif [ "$opt" == 'App patched with specific version' ]; then
        if [ -f "$DIRPATH"/mbcpapp_apk/MBCP_Flutter_SelfPatched.apk ]
    then 
        warn "MBCP Helper / CorePatch must be installed with disable digest verify on !!!"
        warn "You must have connected Android device with USB debugging turned on in order to install !!!"
        adb kill-server
        adb start-server
        adb install 'mbcpapp_apk/MBCP_Flutter_SelfPatched.apk'
        # Delete zimperium detection files
        adb shell su -c rm -rf /data/data/com.mbmobile/files/0*
        adb shell su -c rm -rf /data/data/com.mbmobile/files/1*
        adb shell su -c rm -rf /data/data/com.mbmobile/files/2*
        adb shell su -c rm -rf /data/data/com.mbmobile/files/3*
        adb shell su -c rm -rf /data/data/com.mbmobile/files/4*
        adb shell su -c rm -rf /data/data/com.mbmobile/files/5*
        adb shell su -c rm -rf /data/data/com.mbmobile/files/6*
        adb shell su -c rm -rf /data/data/com.mbmobile/files/7*
        adb shell su -c rm -rf /data/data/com.mbmobile/files/8*
        adb shell su -c rm -rf /data/data/com.mbmobile/files/9*
        warn "ATTENTION : Network traffic will be redirected to [medium.com] for 20 seconds !!!"
        adb shell su -c 'iptables -t nat -A OUTPUT -p tcp -d 0/0 -j DNAT --to-destination 162.159.153.4:443'
        adb shell am start -n com.mbmobile/io.flutter.plugins.MainActivity
        sleep 20
        info "Restoring network traffic"
        adb shell su -c 'iptables -t nat -F OUTPUT'
        info "Press [Try again] after got 1005/1007 error on MB, so it's can skip device not secure dialog !"
    else
        err "[MBCP_Flutter_SelfPatched.apk] not found, cannot continue !"
    fi
        
        elif [ "$opt" == 'App patched with older version [v6.4.55 or lower]' ]; then
        if [ -f "$DIRPATH"/mbcpapp_apk/MBCP_Flutter_SelfPatched.apk ]
    then 
        warn "MBCP Helper / CorePatch must be installed with disable digest verify on !!!"
        warn "You must have connected Android device with USB debugging turned on in order to install !!!"
        adb kill-server
        adb start-server
        adb install 'mbcpapp_apk/MBCP_Flutter_SelfPatched.apk'
        adb shell am start -n com.mbmobile/io.flutter.plugins.MainActivity
    else
        err "[MBCP_Flutter_SelfPatched.apk] not found, cannot continue !"
    fi


        elif [ "$opt" == 'Exit' ]; then
            PS3='Please select options to continue : '
            break
        	fi
done
        ;;
        'Exit' ) exit ;;
    esac
done

