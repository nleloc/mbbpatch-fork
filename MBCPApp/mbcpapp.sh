#!/bin/bash

# Fun fact is this project made with
# A tinkerer, not developer xD
# You might see this line but ignore it then continues calling me a developer, but after all, i just a loser :D

# Initial startup
mkdir -p ~/mbbpatch/MBCPApp/mbapk
mkdir -p ~/mbbpatch/MBCPApp/mbcpapp_apk
mkdir -p ~/mbbpatch/MBCPApp/tools
clear

# Check if user runs on actual Linux environment
if [[ $(grep -i Linux /proc/version) ]]; then
echo "INFO : You have Linux environment :)"
fi

# Check if user trying to run under HyperV (Windows Subsystem For Linux)
# Remove this detection part to bypass WSL detection might lead project development to be STOPPED, You've warned !
if [ -f /proc/sys/fs/binfmt_misc/WSLInterop ]; then
    echo "Detected WSL (Windows Subsystem for Linux) in current Linux environment !!"
    echo "Warn : You won't be supported for any issues under WSL environment !!"
fi

# Check if figlet exists or not
if [ -x /usr/bin/figlet ]
then
    FIGLET=/usr/bin/figlet
else
    echo "WARN : figlet not found, ignoring banner !"
    FIGLET=:
fi

COMMIT='git rev-parse --short HEAD'


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
$FIGLET "MBCPApp Patcher"
echo -------------------------------------------------------------
echo "Patching-tool for MB Bank app with Flutter engine (v6.4.0+)"
echo "Original APK path must be inside [mbapk] folder !"
echo "IMPORTANT : Script must be run on [~/mbbpatch/MBCPApp] !"
echo -------------------------------------------------------------
echo "Current commit :" $(git rev-parse --short HEAD) '(dev)'
echo "Source code : https://gitlab.com/mbcp/mbbpatch"
echo "Made possible by Cuynu with love <3"
echo -------------------------------------------------------------   
# Main functions      
PS3='Please select options to continue : '
select opt in 'Pull latest commit' 'Unpack APK' 'Convert apks to apk' 'Repack APK' 'Install patched app' 'MBShield Check' 'Patch App' 'Legacy patches' 'Extract assets [ROOT]' 'Launch MBCPApp/MBBank' 'Force close MBCPApp/MBBank' 'Clear MBCPApp/MBBank app data' 'Clean patched app' 'Download tools' 'Exit'
do
    if [ "$opt" == 'Download tools' ]; then
    cd tools && rm -rf *.jar
    echo "Downloading apktool_2.12.0.jar..."
    wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.12.0.jar -q --show-progress 
    echo "Downloading APKEditor-1.4.3.jar..."
    wget https://github.com/REAndroid/APKEditor/releases/download/V1.4.3/APKEditor-1.4.3.jar -q --show-progress
    mv *.jar tools/
    cd ..
    echo "You can now continue with other operations"

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
    if [ -f ~/mbbpatch/MBCPApp/tools/apktool_2.12.0.jar ]
then
    java -jar tools/apktool_2.12.0.jar d mbapk/*.apk -o mbapk/mbapk_unpacked
    echo "Cleaning useless files..."
    rm -rf 'mbapk/mbapk_unpacked/assets/_4A9w8flncUrhDOG8dyqLi_azBTYT3PlSXz0hiCzRQA_'
    rm -rf 'mbapk/mbapk_unpacked/assets/0QDl12M5S2hKxoKF4cNI4kEX1qDQRMiOd34TXjSjy4M_'
    rm -rf 'mbapk/mbapk_unpacked/assets/2GcdAWdkXGgxPfHSIhzLkrkf2LU6Z_cuZfUWnczoEHw_'
    rm -rf 'mbapk/mbapk_unpacked/assets/BiLlLhV4LAy_y_rvwmD82q_4yN_liwgN1X0mfwfqTeE_'
    rm -rf 'mbapk/mbapk_unpacked/assets/c7uFHgsHzlQ_T524_4N3h9neXvtcUg0m1ERhEjFpPI8_'
    rm -rf 'mbapk/mbapk_unpacked/assets/ccBu4aSM_mSaMBpFvr14pizu6EGMvwRiZltU_zVJMz0_'
    rm -rf 'mbapk/mbapk_unpacked/assets/DcM3z3tolULDhbn8YrUE7hxOlxZx2oFC5yNQFG1SX9k_'
    rm -rf 'mbapk/mbapk_unpacked/assets/fPGzhQFvISia1NiVGU8vQx9IpRm63E4_1Xv0Z2ypWUE_'
    rm -rf 'mbapk/mbapk_unpacked/assets/g9x205p_On9_RR4kI_GdsoQ2pfSrV_OQXSopshyhYVk_'
    rm -rf 'mbapk/mbapk_unpacked/assets/GXNv8xc5IcVF6TyUgjJpyYFeyHGqUqN7ZS0X_2WRbEE_'
    rm -rf 'mbapk/mbapk_unpacked/assets/H8leCCp85eX0YRvo4WCzqF5MEuj2_9ix6zL2bjnj6hk_'
    rm -rf 'mbapk/mbapk_unpacked/assets/Hput_BfAb8ftOt8hvazec24Eqk0gC5DDY6qALJMLtcI_'
    rm -rf 'mbapk/mbapk_unpacked/assets/MZuOOtdhO6pcGnZ5_kqMPh56hL3LqawBZd05vfIivww_'
    rm -rf 'mbapk/mbapk_unpacked/assets/noNmNoHJ0EUpV0TiKtyRPIVWI0im6K1RPIq3N_q0ho0_'
    rm -rf 'mbapk/mbapk_unpacked/assets/oOot9yCPD3GFqBix7JXjoz4Uui3k3NrwI8wHRlOpn4s_'
    rm -rf 'mbapk/mbapk_unpacked/assets/rqfr7ucXEZM4vIIYYPHXlo6IG1iEad_H61Z4bbEMR3s_'
    rm -rf 'mbapk/mbapk_unpacked/assets/Sje9R7eg_A4wlgbLNHwXS5xNFmS5qaoPnJ6Vg0RnIQ8_'
    rm -rf 'mbapk/mbapk_unpacked/assets/t8_bY_8ibDPQ9rngMwnd7WFI_uqoPlht9nBi26_llbw_'
    rm -rf 'mbapk/mbapk_unpacked/assets/VipqZ50mSUd28eIlPS_2t31IZ6tY24fl8sSl5YsQrbI_'
    rm -rf 'mbapk/mbapk_unpacked/assets/vLpH08bnGzkpsq_MmUdHqkh3bjrVN5tutp6s4jscm3w_'
    rm -rf 'mbapk/mbapk_unpacked/assets/WZ7CC4mxgoVWzgm8AO7rbOneE6TkqXwT2YV3htdswEQ_' 
    rm -rf 'mbapk/mbapk_unpacked/assets/x_uYtCXdh_oYw_XLfZQkX10Bcqq2HFK3q7v1dJVw3zM_' 
    rm -rf 'mbapk/mbapk_unpacked/assets/Y83jllvBi79vZIh2_UNtyo3_Lvd94lqie_q1dc5O3j0_' 
    rm -rf 'mbapk/mbapk_unpacked/assets/ZN6CRAqtR7CKp7LFoivhHDbCS6iAtrEW6_sLvrfWgEM_' 
    rm -rf 'mbapk/mbapk_unpacked/assets/ZOKOK1a6XCiqYb_a8bYPE9c0rjUf7_n7k77YxX5Ypdw_' 
    rm -rf 'mbapk/mbapk_unpacked/assets/zxHdhL4_ZEQLQeo8R2DzSYl9PGss_cKSCQTcZGBtVmU_' 
    rm -rf 'mbapk/mbapk_unpacked/assets/jNMI79raTvV7VHN5Vrzw4Xs66YP_a1ftP9SmUB24DYg_' 
    echo "Creating [mbcp_info] folder..."
    mkdir 'mbapk/mbapk_unpacked/assets/mbcp_info/'
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
    echo "Repacking APK..."
    echo "This app are compiled by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). "That's all xD" > 'mbapk/mbapk_unpacked/assets/mbcp_info/mbcpinfo.txt'
    java -jar tools/apktool_2.12.0.jar b mbapk/mbapk_unpacked -o mbcpapp_apk/MBCP_Flutter_TMP.apk
    echo "Processing APK signature scheme v2/v3..."
    rm -rf 'mbcpapp_apk/MBCP_Flutter_TMP_decompile_xml'
    java -jar tools/APKEditor-1.4.3.jar d -i 'mbcpapp_apk/MBCP_Flutter_TMP.apk'
    cp -r 'mbsig/signatures' 'mbcpapp_apk/MBCP_Flutter_TMP_decompile_xml/'
    java -jar tools/APKEditor-1.4.3.jar b -i 'mbcpapp_apk/MBCP_Flutter_TMP_decompile_xml'
    mv 'mbcpapp_apk/MBCP_Flutter_TMP_decompile_xml_out.apk' 'mbcpapp_apk/MBCP_Flutter_SelfPatched.apk'
    rm -rf 'mbcpapp_apk/MBCP_Flutter_TMP_decompile_xml'
    rm 'mbcpapp_apk/MBCP_Flutter_TMP.apk'
    echo "Completed! Repacked APK are saved as [mbcpapp_apk/MBCP_Flutter_SelfPatched.apk] !!!"
    echo "Install and trying to open it when ಠ‿ಠ"
    echo "If you are facing issues, report it on Telegram [@mbbpatch] or GitLab : mbbpatch !!"

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
    java -jar tools/APKEditor-1.4.3.jar m -i mbapk/*.apks
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
    ./patch.sh
else 
    echo "[mbapk_unpacked] folder not found ! Please unpack APK first !"
    fi

    elif [ "$opt" == 'Legacy patches' ]; then
     if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib ]
 then
    ./legacy_patch.sh
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

    elif [ "$opt" == 'Pull latest commit' ]; then
    git pull origin dev
    echo "Please run patcher again !"
    exit

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

 
    elif [ "$opt" == 'Install patched app' ]; then
    echo Select your patched version to continue
    PS3='Select patched version to continue, or [3] to quit : '
    select opt in 'App patched with newer version [v6.4.56 or higher]' 'App patched with older version [v6.4.55 or lower]' 'Exit'
do
    	if [ "$opt" == 'App patched with newer version [v6.4.56 or higher]' ]; then
        if [ -f ~/mbbpatch/MBCPApp/mbcpapp_apk/MBCP_Flutter_SelfPatched.apk ]
    then 
        echo "MBCP Helper / CorePatch must be installed with disable digest verify on !!!"
        echo "You must have connected Android device with USB debugging turned on in order to install !!!"
        adb kill-server
        adb start-server
        adb install 'mbcpapp_apk/MBCP_Flutter_SelfPatched.apk'
        echo "ATTENTION : Network traffic will be redirected to [medium.com] for 20 seconds !!!"
        adb shell su -c iptables -t nat -A OUTPUT -p tcp -d 0/0 -j DNAT --to-destination 162.159.153.4:443
        adb shell am start -n com.mbmobile/io.flutter.plugins.MainActivity
        sleep 20
        echo "Restoring network traffic"
        adb shell su -c iptables -t nat -F OUTPUT
        echo "Press [Try again] after got 1005/1007 error on MB, so it's can skip device not secure dialog !"
    else
        echo "[MBCP_Flutter_SelfPatched.apk] not found, cannot continue !"
    fi
        
        elif [ "$opt" == 'App patched with older version [v6.4.55 or lower]' ]; then
        if [ -f ~/mbbpatch/MBCPApp/mbcpapp_apk/MBCP_Flutter_SelfPatched.apk ]
    then 
        echo "MBCP Helper / CorePatch must be installed with disable digest verify on !!!"
        echo "You must have connected Android device with USB debugging turned on in order to install !!!"
        adb kill-server
        adb start-server
        adb install 'mbcpapp_apk/MBCP_Flutter_SelfPatched.apk'
        adb shell am start -n com.mbmobile/io.flutter.plugins.MainActivity
    else
        echo "[MBCP_Flutter_SelfPatched.apk] not found, cannot continue !"
    fi


        elif [ "$opt" == 'Exit' ]; then
        clear
        sh mbcpapp.sh
       break
        	fi
done


    elif [ "$opt" == 'Exit' ]; then
		exit
		break
	fi
done

