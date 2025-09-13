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

# Check if user is trying to run under WSL (Windows Subsystem for Linux)
# Removing this detection part might cause project development to be STOPPED, You've been warned !
if [ -f /proc/sys/fs/binfmt_misc/WSLInterop* ]; then
   echo "WSL is not allowed. Sorry."
   exit 
fi
# Workaround for another WSL debian
if [ -f /proc/sys/fs/binfmt_misc/WSLInterop-late ]; then
    echo "WSL is not allowed. Sorry."
    exit
fi

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
info 'Checking if Java exists...'
if ! java -version ; then
    err "Java not found !!!"
    info "Please install Java for your Linux distribution ! "
    exit 127
fi

COMMIT="$(git rev-parse --short HEAD)"
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
    info "Creating [mbcp_info] folder..."
    mkdir 'mbapk/mbapk_unpacked/root/assets/mbcp_info/'
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
        good 'If you are facing issues, report it on Telegram [@mbbpatch] or Disroot Forgejo : mbbpatch !!' 
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
echo "Current commit : $COMMIT (dev)"
echo "Source code : https://git.disroot.org/mbcp/mbbpatch.git"
echo "Made possible by Cuynu with love <3"
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
        adb pull /sdcard/assets mbapk/mbapk_unpacked/root/
        adb shell rm -rf /sdcard/assets
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
    select opt in 'App patched with newer version [v6.4.59+]' 'App patched with specific version [v6.4.56 ~ v6.4.58]' 'App patched with older version [v6.4.55 or lower]' 'Exit'
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

    	elif [ "$opt" == 'App patched with specific version [v6.4.56 ~ v6.4.58]' ]; then
        if [ -f "$DIRPATH"/mbcpapp_apk/MBCP_Flutter_SelfPatched.apk ]
    then 
        warn "MBCP Helper / CorePatch must be installed with disable digest verify on !!!"
        warn "You must have connected Android device with USB debugging turned on in order to install !!!"
        adb kill-server
        adb start-server
        adb install 'mbcpapp_apk/MBCP_Flutter_SelfPatched.apk'
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

