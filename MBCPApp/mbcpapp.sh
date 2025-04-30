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

# Banner 
$FIGLET "MBCPApp Flutter Patcher"
echo -------------------------------------------------------------  
echo Auto patching-tool for MB Bank, mainly for MB Flutter
echo Original APK path must be inside [mbapk] folder !
echo -------------------------------------------------------------   
# Main functions      
PS3='Please select options to continue : '
select opt in 'Unpack APK' 'Repack APK' 'Autopatch strings' 'Change app logo' 'Modify app theme' 'Inject bypass class' 'Extract assets [ROOT]' 'Bypass signature check' 'Launch MBCPApp/MBBank' 'Force close MBCPApp/MBBank' 'Clear MBCPApp/MBBank app data' 'Clean patched app' 'Download apktool' 'Exit'
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
    fi

     elif [ "$opt" == 'Repack APK' ]; then
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



	elif [ "$opt" == 'Autopatch strings' ]; then
   if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib ]
 then
    echo Patching strings in libapp.so...
    sed -i -e 's/online OTP/DigitalOTP/g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i -e 's/online OTP/DigitalOTP/g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    echo INFO : [online OTP] strings are modified to [DigitalOTP] !
    sed -i -e 's/Online OTP/DigitalOTP/g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i -e 's/Online OTP/DigitalOTP/g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    echo INFO : [Online OTP] strings are modified to [DigitalOTP] !
    sed -i -e 's/MB Bank/MBCPApp/g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i -e 's/MB Bank/MBCPApp/g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    echo INFO : [MB Bank] strings are modified to [MBCPApp] !
    sed -i -e 's/The lastest version/No  new version !!!/g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i -e 's/The lastest version/No  new version !!!/g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    echo INFO : [The lastest version] strings are modified to [Patched as MBCPApp] !
    echo Patching link strings....
    sed -i 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenLoginClassic.png|https://gitlab.com/-/project/56341767/uploads/f585b28f88876db211f116d1d622031d/mbcp_login.png?git1|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenLoginClassic.png|https://gitlab.com/-/project/56341767/uploads/f585b28f88876db211f116d1d622031d/mbcp_login.png?git1|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_thumbnailClassic.png|https://gitlab.com/-/project/56341767/uploads/ba4f0923a4956ba379868e01c55e9cfb/thumb.png?aaaaaaa|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_thumbnailClassic.png|https://gitlab.com/-/project/56341767/uploads/ba4f0923a4956ba379868e01c55e9cfb/thumb.png?aaaaaaa|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|market://details?id=com.mbmobile|https://t.me/mbbpatch/          |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|market://details?id=com.mbmobile|https://t.me/mbbpatch/          |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
 else
     echo "ERROR : [mbapk_unpacked] folder not found, please unpack APK first !"
     echo "ERROR : Auto patch strings requires [mbapk_unpacked] in order to continue !"
 fi


    elif [ "$opt" == 'Modify app theme' ]; then
    echo In order to modify app theme, you must extract assets first !

    elif [ "$opt" == 'Inject bypass class' ]; then
    echo placeholder

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
        echo Trying to extract flutter_assets...
        adb shell su -c cp -r -f /data/user/0/com.mbmobile/files/flutter_assets /sdcard/flutter_assets
        echo Copying assets...
        adb pull /sdcard/flutter_assets mbapk/mbapk_unpacked/assets/
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






    
    elif [ "$opt" == 'Change app logo' ]; then
    echo -------------------------------------------
    echo -------------------------------------------
    PS3='Select app icon variant to continue, or [5] to quit : '
    select opt in '30/4-1/5' 'MB Classic' 'Tet' 'Noel' 'Exit'
do
    	if [ "$opt" == '30/4-1/5' ]; then
         if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/ ]  
then
        echo Removing old logos...
        rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-hdpi
        echo INFO : tries removed [mipmap-hdpi] on [mbapk_unpacked/res] !
        rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-mdpi
        echo INFO : tries removed [mipmap-mdpi] on [mbapk_unpacked/res] !
        rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-xhdpi
        echo INFO : tries removed [mipmap-xhdpi] on [mbapk_unpacked/res] !
        rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-xxhdpi
        echo INFO : tries removed [mipmap-xxhdpi] on [mbapk_unpacked/res] !
        rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-xxxhdpi
        echo INFO : tries removed [mipmap-xxxhdpi] on [mbapk_unpacked/res] !
        echo Copying new logos to [mbapk_unpacked/res] !!!
        cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/thongnhatVN/mipmap-hdpi mbapk/mbapk_unpacked/res
        cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/thongnhatVN/mipmap-mdpi mbapk/mbapk_unpacked/res
        cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/thongnhatVN/mipmap-xhdpi mbapk/mbapk_unpacked/res
        cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/thongnhatVN/mipmap-xxhdpi mbapk/mbapk_unpacked/res
        cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/thongnhatVN/mipmap-xxxhdpi mbapk/mbapk_unpacked/res
        echo Done !
    else
        echo "[mbapk_unpacked] not found ! Please unpack APK first !"
    fi

        elif [ "$opt" == 'MB Classic' ]; then
         if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/ ]  
then
        echo Removing old logos...
        rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-hdpi
        echo INFO : tries removed [mipmap-hdpi] on [mbapk_unpacked/res] !
        rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-mdpi
        echo INFO : tries removed [mipmap-mdpi] on [mbapk_unpacked/res] !
        rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-xhdpi
        echo INFO : tries removed [mipmap-xhdpi] on [mbapk_unpacked/res] !
        rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-xxhdpi
        echo INFO : tries removed [mipmap-xxhdpi] on [mbapk_unpacked/res] !
        rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-xxxhdpi
        echo INFO : tries removed [mipmap-xxxhdpi] on [mbapk_unpacked/res] !
        echo Copying new logos to [mbapk_unpacked/res] !!!
        cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/normal/mipmap-hdpi mbapk/mbapk_unpacked/res
        cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/normal/mipmap-mdpi mbapk/mbapk_unpacked/res
        cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/normal/mipmap-xhdpi mbapk/mbapk_unpacked/res
        cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/normal/mipmap-xxhdpi mbapk/mbapk_unpacked/res
        cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/normal/mipmap-xxxhdpi mbapk/mbapk_unpacked/res
        echo Done !
    else
        echo "[mbapk_unpacked] not found ! Please unpack APK first !"
    fi

        elif [ "$opt" == 'Tet' ]; then
         if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/ ]  
then
        echo Removing old logos...
        rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-hdpi
        echo INFO : tries removed [mipmap-hdpi] on [mbapk_unpacked/res] !
        rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-mdpi
        echo INFO : tries removed [mipmap-mdpi] on [mbapk_unpacked/res] !
        rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-xhdpi
        echo INFO : tries removed [mipmap-xhdpi] on [mbapk_unpacked/res] !
        rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-xxhdpi
        echo INFO : tries removed [mipmap-xxhdpi] on [mbapk_unpacked/res] !
        rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-xxxhdpi
        echo INFO : tries removed [mipmap-xxxhdpi] on [mbapk_unpacked/res] !
        echo Copying new logos to [mbapk_unpacked/res] !!!
        cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/tet/mipmap-hdpi mbapk/mbapk_unpacked/res
        cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/tet/mipmap-mdpi mbapk/mbapk_unpacked/res
        cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/tet/mipmap-xhdpi mbapk/mbapk_unpacked/res
        cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/tet/mipmap-xxhdpi mbapk/mbapk_unpacked/res
        cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/tet/mipmap-xxxhdpi mbapk/mbapk_unpacked/res
        echo Done !
    else
        echo "[mbapk_unpacked] not found ! Please unpack APK first !"
    fi

        elif [ "$opt" == 'Noel' ]; then
         if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/ ]  
then
        echo Removing old logos...
        rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-hdpi
        echo INFO : tries removed [mipmap-hdpi] on [mbapk_unpacked/res] !
        rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-mdpi
        echo INFO : tries removed [mipmap-mdpi] on [mbapk_unpacked/res] !
        rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-xhdpi
        echo INFO : tries removed [mipmap-xhdpi] on [mbapk_unpacked/res] !
        rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-xxhdpi
        echo INFO : tries removed [mipmap-xxhdpi] on [mbapk_unpacked/res] !
        rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-xxxhdpi
        echo INFO : tries removed [mipmap-xxxhdpi] on [mbapk_unpacked/res] !
        echo Copying new logos to [mbapk_unpacked/res] !!!
        cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/noel/mipmap-hdpi mbapk/mbapk_unpacked/res
        cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/noel/mipmap-mdpi mbapk/mbapk_unpacked/res
        cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/noel/mipmap-xhdpi mbapk/mbapk_unpacked/res
        cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/noel/mipmap-xxhdpi mbapk/mbapk_unpacked/res
        cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/noel/mipmap-xxxhdpi mbapk/mbapk_unpacked/res
        echo Done !
    else
        echo "[mbapk_unpacked] not found ! Please unpack APK first !"
    fi


        elif [ "$opt" == 'Exit' ]; then
        clear
        sh mbcpapp.sh

        break
    fi
done
    
    elif [ "$opt" == 'Bypass signature check' ]; then
    if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked ]
 then 
    # Checks for MBShield, if exists then exit function
    echo "Checking for MBShield !!"
    if [ -f ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/assets/mbshield.szip ]
 then
    echo "INFO : MBShield found ! Bypass signature checks won't be possible if MBShield is present on current unpacked APK !"
    echo "INFO : Please use supported version !!!"
    echo For React Native : MBBank/MB Lite v1.0 up to v6.3.11
    echo For Flutter : MBBank v6.4.0 up to v6.4.21
    echo Some specific version has no MBShield can also be used :
    echo MBBank v6.4.24 [versionCode : 624]
    echo MBBank v6.4.26 [versionCode : 626]
    echo MBBank v6.4.45 [versionCode : 658]
    else
    echo "INFO : MBShield not found ! Continuing !!! "
    echo "Placeholder function! "
   
    fi
    else
    echo APK are not unpacked ! Please unpack APK first !
fi








    elif [ "$opt" == 'Clear MBCPApp/MBBank app data' ]; then
    adb shell pm clear com.mbmobile
    echo "INFO : Current logged in account will remain present, even if app data is cleared !"





    elif [ "$opt" == 'Launch MBCPApp/MBBank' ]; then
    adb shell am start -n com.mbmobile/io.flutter.plugins.MainActivity
    elif [ "$opt" == 'Force close MBCPApp/MBBank' ]; then
    adb shell am force-stop com.mbmobile

    elif [ "$opt" == 'Clean patched app' ]; then
    rm mbcpapp_apk/*.apk
    rm mbcpapp_apk/*.zip
    rm mbapk/*.apk
    rm mbapk/*.apks
    rm -rf mbapk/mbapk_unpacked

    elif [ "$opt" == 'Exit' ]; then
		exit
		break
	fi
done