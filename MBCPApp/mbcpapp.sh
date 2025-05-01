#!/bin/bash

# Initial startup
if [ -d ~/mbbpatch/MBCPApp/mbapk ]
then
    clear
else 
    mkdir ~/mbbpatch/MBCPApp/mbapk
    fi

if [ -d ~/mbbpatch/MBCPApp/mbcpapp_apk ]
then
    clear
else 
    mkdir ~/mbbpatch/MBCPApp/mbcpapp_apk
fi  
if [ -d ~/mbbpatch/MBCPApp/tools ]
    then
    clear 
else 
    mkdir ~/mbbpatch/MBCPApp/tools
    fi

# Check if user trying to run under HyperV (Windows Subsystem For Linux)
if [[ $(grep -i Microsoft /proc/version) ]]; then
echo "You are trying to run on WSL, please use real Linux environment !"
exit
fi

# Check if user runs on actual Linux environment
if [[ $(grep -i Linux /proc/version) ]]; then
echo "INFO : You have Linux environment :)"
fi

# Check if figlet exists or not
if [ -x /usr/bin/figlet ]
then
    FIGLET=/usr/bin/figlet
else
    echo "WARN : figlet not found, ignoring banner !"
    FIGLET=:
fi

# Check if java exists on /usr/bin/java
echo Checking if Java exists...
if [ -x /usr/bin/java ]
then
    JAVA=/usr/bin/java
    clear
else
    echo "ERROR : Java not found on [/usr/bin/java] !!!"
    echo "INFO : Please install Java for your Linux distribution ! "
    echo "INFO : If you have different JDK location, be sure link it"
    exit
    JAVA=:
fi

# Banner 
$FIGLET "MBCPApp Flutter Patcher"
echo -------------------------------------------------------------
echo Source code : https://gitlab.com/cuynu/mbbpatch  
echo Auto patching-tool for MB Bank, mainly for MB Flutter
echo Original APK path must be inside [mbapk] folder !
echo -------------------------------------------------------------   
# Main functions      
PS3='Please select options to continue : '
select opt in 'Unpack APK' 'Repack APK' 'Patch App' 'Convert apks to apk'  'Autopatch strings' 'Change app logo' 'Modify app theme' 'Extract assets [ROOT]' 'Bypass signature check' 'Launch MBCPApp/MBBank' 'Force close MBCPApp/MBBank' 'Clear MBCPApp/MBBank app data' 'Clean patched app' 'Download apktool' 'Exit'
do
	if [ "$opt" == 'Download apktool' ]; then
    echo Downloading apktool_2.11.1.jar
    wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.11.1.jar 
    mv apktool_2.11.1.jar tools/


    elif [ "$opt" == 'Unpack APK' ]; then
    # Check if *.apk exists
    if [ -f ~/mbbpatch/MBCPApp/mbapk/*.apk ]
 then
    # Check if apk is unpacked or not
    if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked ]
    then
    echo APK already unpacked, no need to unpack again !
    else
    # Check if apktool exists or not
    if [ -f ~/mbbpatch/MBCPApp/tools/apktool_2.11.1.jar ]
then
    java -jar tools/apktool_2.11.1.jar d mbapk/*.apk -o mbapk/mbapk_unpacked
else
    echo "Please download apktool first !"
fi
    fi 
  else
    echo "Where is *.apk file?"
    # APK not found ?
    echo "*.apk not found on [mbapk] folder, please copy apk to [mbapk] folder !"
    echo "If you got apks from eMBee APKs, use [Convert apks to apk] option !"
    fi

     elif [ "$opt" == 'Repack APK' ]; then
     if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked ]
 then
    echo Repacking APK...
    java -jar tools/apktool_2.11.1.jar b mbapk/mbapk_unpacked -o mbcpapp_apk/MBCP_Flutter.zip
    echo App repacked to [mbcpapp_apk/MBCP_Flutter.zip] !!!
    echo ------------------------------------------
    echo ------------------------------------------
    echo You MUST use MT Manager on Android, and copy ALL FILE and FOLDERS on [MBCP_Flutter.zip] to [mbsig.apk]
    echo So patched MBBank [MBCPApp] can pass MBShield signature check [if have] and works.
    echo "!!! MT Manager are required because Apktool can't handle and keep APK signature scheme v2 and v3 !!!"
    echo -----------------------------------------------------
    echo -----------------------------------------------------
    echo Both file will be copied to [/sdcard] !!!
    adb push mbcpapp_apk/MBCP_Flutter.zip /sdcard
    adb push mbsig/mbsig.apk /sdcard
else
    echo "[mbapk_unpacked] folder not found ! Please unpack APK first !"
    fi

    elif [ "$opt" == 'MBShield Check' ]; then
    if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/ ]  
then
    if [ -f ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/assets/mbshield.szip ]
then
    echo "MBShield found on [mbapk_unpacked/assets/mbshield.szip]" !!!
    echo "Patching operation is limited due to MBShield :("
    echo "You need to extract assets from Android device for some patching operation to works properly !!!"
else
    echo "MBShield NOT found on [mbapk_unpacked/assets/]"
    echo "Patching operation are all not limited at all !"
    echo "Asset extraction is not needed :)"
    fi
else 
    echo "[mbapk_unpacked] not found ! Please unpack APK first !"
fi


    elif [ "$opt" == 'Convert apks to apk' ]; then
    if [ -f ~/mbbpatch/MBCPApp/mbapk/*.apks ]
 then
    echo "Converting apks to apk..."
    java -jar tools/APKEditor-1.4.2.jar m -i mbapk/*.apks
    mv mbapk/*.apk mbapk/MBOriginal.apk
    echo Cleaning left over [apks] files...
    rm -f mbapk/*.apks
    echo "You probably can continue to unpack APK!"
 else
    echo "APKs missing, cannot continue !"
 fi

     elif [ "$opt" == 'Patch App' ]; then
     if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib ]
 then
    sh patch.sh
else 
    echo "[mbapk_unpacked] folder not found ! Please unpack APK first !"
    fi

    elif [ "$opt" == 'Extract assets [ROOT]' ]; then
    echo To extract encrypted assets [if current app has MBShield protection] you need rooted device 
    echo And trigger a bulit-in app assets extraction !
    echo -------------------------------------------
    echo -------------------------------------------
    PS3='Select options continue, or [3] to quit : '
    select opt in 'Launch MBCPApp/MBBank' 'Extract assets' 'Exit'
do
    	if [ "$opt" == 'Launch MBCPApp/MBBank' ]; then
        adb shell am start -n com.mbmobile/io.flutter.plugins.MainActivity
        echo After app started, you MUST need to trigger assets extraction
        echo By trigger eKYC authetication with reset account password option or register DigitalOTP
        echo After you got into eKYC screen, close the app, then use Extract assets option to extract assets.
        elif [ "$opt" == 'Extract assets' ]; then
        if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/ ]  
then
        if [ -f ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/assets/mbshield.szip ]  
then
        echo "INFO : MBShield found ! Continuing !!!"
        echo You MUST grant root access to [com.android.shell] in order to extract assets !
        echo Trying to extract assets...
        adb shell am force-stop com.mbmobile
        adb shell rm -rf /sdcard/assets
        adb shell mkdir /sdcard/assets
        adb shell su -c cp -r -f /data/user/0/com.mbmobile/files/flutter_assets /sdcard/assets
        adb shell su -c cp -r -f /data/user/0/com.mbmobile/files/dexopt /sdcard/assets
        adb shell su -c cp -r -f /data/user/0/com.mbmobile/files/font /sdcard/assets
        adb shell su -c cp -r -f /data/user/0/com.mbmobile/files/mbshield /sdcard/assets
        adb shell su -c cp -r -f /data/user/0/com.mbmobile/files/media_init_data /sdcard/assets
        adb shell su -c cp -r -f /data/user/0/com.mbmobile/files/mlkit_barcode_models /sdcard/assets
        adb shell su -c cp -r -f /data/user/0/com.mbmobile/files/models_bundled /sdcard/assets
        adb shell su -c cp -r -f /data/user/0/com.mbmobile/files/mwebview /sdcard/assets
        adb shell su -c cp -r -f /data/user/0/com.mbmobile/files/zfiles /sdcard/assets
        adb shell su -c cp -f /data/user/0/com.mbmobile/files/crashlytics-build.properties /sdcard/assets
        adb shell su -c cp -f /data/user/0/com.mbmobile/files/firmware /sdcard/assets
        adb shell su -c cp -f /data/user/0/com.mbmobile/files/insider.ttf /sdcard/assets
        adb shell su -c cp -f /data/user/0/com.mbmobile/files/dlangV5.dat /sdcard/assets
        adb shell su -c cp -f /data/user/0/com.mbmobile/files/dlangV5.en.dat /sdcard/assets
        adb shell su -c cp -f /data/user/0/com.mbmobile/files/policy0 /sdcard/assets
        adb shell su -c cp -f /data/user/0/com.mbmobile/files/policy1 /sdcard/assets
        adb shell su -c cp -f /data/user/0/com.mbmobile/files/policy2 /sdcard/assets
        adb shell su -c cp -f /data/user/0/com.mbmobile/files/policy3 /sdcard/assets
        adb shell su -c cp -f /data/user/0/com.mbmobile/files/policy4 /sdcard/assets
        adb shell su -c cp -f /data/user/0/com.mbmobile/files/policy5 /sdcard/assets
        adb shell su -c cp -f /data/user/0/com.mbmobile/files/policy6 /sdcard/assets
        adb shell su -c cp -f /data/user/0/com.mbmobile/files/policy8 /sdcard/assets
        adb shell su -c cp -f /data/user/0/com.mbmobile/files/policy9 /sdcard/assets
        adb shell su -c cp -f /data/user/0/com.mbmobile/files/policym /sdcard/assets
        adb shell su -c cp -f /data/user/0/com.mbmobile/files/profile /sdcard/assets
        adb shell su -c cp -f /data/user/0/com.mbmobile/files/rulesV5.dat /sdcard/assets
        adb shell su -c cp -f /data/user/0/com.mbmobile/files/sgprofile /sdcard/assets
        adb shell su -c cp -f /data/user/0/com.mbmobile/files/signature /sdcard/assets
        adb shell su -c cp -f /data/user/0/com.mbmobile/files/smart_ekyc_finall.zip /sdcard/assets
        adb shell su -c cp -f /data/user/0/com.mbmobile/files/version.json /sdcard/assets
        adb shell su -c cp -f /data/user/0/com.mbmobile/files/vkeylicensepack /sdcard/assets
        adb shell su -c cp -f /data/user/0/com.mbmobile/files/voscodesign.vky /sdcard/assets
        echo Copying assets...
        sleep 2
        adb pull /sdcard/assets mbapk/mbapk_unpacked/
        sleep 5
        adb shell rm -rf /sdcard/assets
        else
        echo "INFO : MBShield not found ! No need to extract assets !"
        fi
else
        echo "ERROR : Can't find [mbapk/mbapk_unpacked] folder, cannot continue ! "
        echo "Please unpack APK first !"
        fi

        elif [ "$opt" == 'Exit' ]; then
        clear
        sh mbcpapp.sh
       break
        	fi
done

    elif [ "$opt" == 'Clear MBCPApp/MBBank app data' ]; then
    echo "Clearing [com.mbmobile] data..."
    adb shell pm clear com.mbmobile
    adb shell am start -n com.mbmobile/io.flutter.plugins.MainActivity
    echo "INFO : Current logged in account will remain present, even if app data is cleared !"

    elif [ "$opt" == 'Launch MBCPApp/MBBank' ]; then
    adb shell am start -n com.mbmobile/io.flutter.plugins.MainActivity
    elif [ "$opt" == 'Force close MBCPApp/MBBank' ]; then
    adb shell am force-stop com.mbmobile

    elif [ "$opt" == 'Clean patched app' ]; then
    echo "Cleaning, please wait..." 
    rm -f mbcpapp_apk/*.apk
    rm -f mbcpapp_apk/*.zip
    rm -f mbapk/*.apk
    rm -f mbapk/*.apks
    rm -rf mbapk/mbapk_unpacked
    echo "Cleared !"

    elif [ "$opt" == 'Exit' ]; then
		exit
		break
	fi
done
