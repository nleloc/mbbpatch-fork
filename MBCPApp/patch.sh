#!/bin/bash

# Fun fact is this project made with
# A tinkerer, not developer xD
# You might see this line but ignore it then continues calling me a developer, but after all, i just a loser :D

# Check if user trying to run under HyperV (Windows Subsystem For Linux)
# Remove this detection part to bypass WSL detection might lead project development to be STOPPED, You've warned !
if [ -f /proc/sys/fs/binfmt_misc/WSLInterop ]; then
echo "Detected WSL (Windows Subsystem for Linux) in current Linux environment !!"
echo "INFO : MBCPApp Patcher must be run on actual or virtualized (non-WSL) Linux environment instead !!!"
echo "INFO : Trying to remove WSL detection code might make script not works properly  !"
exit
fi

if [[ $OSTYPE == 'darwin'* ]]; then
  echo "INFO : You have macOS environment, which is not supported !"
    exit
fi

# imported from https://github.com/dylanaraps/pure-bash-bible
bb_split() {
    # Usage: split "string" "delimiter"
    IFS=$'\n' read -d "" -ra arr <<< "${1//$2/$'\n'}"
    # printf '%s\n' "${arr[@]}"
    printf '%s\n' "${arr[$3]}"
}

sed_libapp() {
    target=$(bb_split "$1" '|' '1')
    replacement=$(bb_split "$1" '|' '2')
    (
        sed -i "$1" ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
        sed -i "$1" ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    ) && echo "INFO : [$target] -> [$replacement]" || echo "WARN : replacing [$target] failed !"
}


manifest_remove() {
    sed -i "/$1/d" ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
}

echo ---------------------------
echo Patch list for MBCPApp :   
PS3='Select patch options : '
select opt in 'Autopatch strings' 'Change app logo' 'Force portrait screen' 'Remove invoke to mbshield' 'Remove bulit-in fonts' 'Modify app theme' 'Remove garbage permission and activities' 'Remove eMBee' 'Revert old eMBee logo' 'Remove animated QR background' 'Remove banners & MiniApp'  'Remove VPN detection' 'Remove VNPAY VMB20' 'Restore old registration resources' 'Bypass accessibility & malicious apps check' 'Hide VTAP root detection activity & dialog' 'Remove new root detection' 'Remove app from launcher' 'Set targetSdkVersion to 35' 'Add modified resources' 'Add anime resources' 'Exit'
do
	if [ "$opt" == 'Autopatch strings' ]; then
    if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib ]
 then
    echo "Applying [Autopatch strings] patch..."
    echo "Patching strings in [libapp.so], please wait..."
    # App embedded links
    # App update button url
    sed_libapp 's|market://details?id=com.mbmobile|https://t.me/mbbpatch/2?ref=mbcp|g'
    # Facebook button url
    sed_libapp 's|https://www.facebook.com/VietnamMBBank?mibextid=LQQJ4d|https://gitlab.com/cuynu/mbbpatch/?                   |g'
    # VNeID download url
    sed_libapp 's|https://play.google.com/store/apps/details?id=com.vnid|https://www.apkmirror.com/uploads/?appcategory=vneid??|g'

    # App embedded strings
    sed_libapp 's|online OTP|DigitalOTP|g'
    sed_libapp 's|Online OTP|DigitalOTP|g'
    sed_libapp 's|MB Bank|MBCPApp|g'
    sed_libapp 's|The lastest version|TG/GitLab: mbbpatch|g'
    sed_libapp 's|User profile|View profile|g'
    sed_libapp 's|User ID|Phone  |g'
    sed_libapp 's|MB Membership Package|MB Membership        |g'
    sed_libapp 's|email information|Email information|g'
    sed_libapp 's|Premium Account Number|Open new lucky account|g'
    sed_libapp 's|Cashback 150K|             |g'
    sed_libapp 's|Request for supplying password|Request for new password      |g'
    sed_libapp 's|ID card/ID card|Old/New ID card|g'
    sed_libapp 's|Number of document|Number of id card |g'
    sed_libapp 's|Your device will be locked if you enter incorrectly more than 5 times. Please try again or select the "Forgot password" feature to be reissued.|Your account will be locked if you enter incorrectly more than 5 times. Please try again or select the "Forgot password" feature to reset pw...|g'
    sed_libapp 's|Introduction to receive money|Invite using MB              |g'
    sed_libapp 's|Shopping-  Entertainment- Investment|Flutter embedded MiniApps           |g'
    sed_libapp 's|Downloaded themes|Your owned themes|g'
    sed_libapp 's|Coming soon|Placeholder|g'
    sed_libapp 's|Coming Soon|Placeholder|g'
    sed_libapp 's|MBBank app|MBCPApp   |g'
    
    # Adapt for v6.4.56+
    sed_libapp 's|MBBank APP|MBCPApp   |g'
    # Adapt for v6.4.56+
    sed_libapp 's|APP MBBank|MBCPApp   |g'
    sed_libapp 's|MBBank App|MBCPApp   |g'
    sed_libapp 's|App MBBank|MBCPApp   |g'
    sed_libapp 's|get notifications|Get notifications|g'
    sed_libapp 's|Read the announcement|Notify with voice    |g'

    sed_libapp 's|Viettel post|Viettel Post|g'
    sed_libapp 's|This service has been upgraded, please update the app to continue using the service|This app version are expired, please update or repatch with newer version. (GW525) |g'
    sed_libapp 's|Welcome to the MBBank APP!|Thanks for login to MBCP~ |g'
    sed_libapp 's|There is no device registered for DOTP|No active DigitalOTP device found  :> |g'
    sed_libapp 's|Transaction authentication code (OTP) has been sent to your phone number|DigitalOTP registration code (OTP) has been sent to your phone number : |g'
    sed_libapp 's|You can request a new code later|You can request a new code after|g'
    sed_libapp 's|Verification information is invalid, please contact hotline 1900545426 for support|EKYC failed, please go to our Telegram group (@mbbpatch) for details and help !!! |g'
   # XPE002/XPE003 dialog contents :
   sed_libapp 's|MB has detected that the device is currently not secure for performing transactions|This dialog are showing cuz server-side MB changes for rooted devices are enforced.|g'
   sed_libapp 's|Please try closing and reopening the app, or reinstalling the MBCPApp    from the app store to continue using the service.|If you need to bypass this dialog, please checkout updated version of MBZDefend-Fix on GitLab which contains fixes (soon) |g'

   sed_libapp 's|Set up DigitalOTP|Setup DigitalOTP |g'
   sed_libapp 's|Set up facial authentication|Setup eKYC for transactions |g'
   sed_libapp 's|facial|seKYC |g'
   sed_libapp 's|Dentification|Identifier   |g'
   
   sed_libapp 's|The data synchronization process was not successful, please restart the MBCPApp    or redownload it on the app market|Unable to connect to MB server or VTAP isnt properly working. Please restart MBCPApp and try to login again.         |g'

   sed_libapp 's|Devices registered with DOTP|Active DigitalOTP devices   |g'
   
   sed_libapp 's|Select Digital OTP Setup / Configuration|3 dots / Setup DigitalOTP / Register    |g'
   sed_libapp 's|Total Balance in VND|Total balance in VND|g'
   sed_libapp 's|Simply enter the DigitalOTP PIN, and the system will Autoally activate to process encryption and transaction authentication.|Simply enter the DigitalOTP PIN, and the VTAP system will activate to process encryption and transaction authentication.    |g'

    echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/autopatch_strings.inf'
    echo "Applied [Autopatch strings] patch !!!"
    
 else
     echo "ERROR : [mbapk_unpacked] folder not found, please unpack APK first !"
     echo "ERROR : Auto patch strings requires [mbapk_unpacked] in order to continue !"
 fi 

   elif [ "$opt" == 'Force portrait screen' ]; then
    if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked ]
 then
    echo "Applying patch [Force portrait screen]..."
    echo "Patching [AndroidManifest.xml]..."
    sed -i 's|fullSensor|portrait|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
    echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/force_portrait_screen.inf'
    echo "Applied [Force portrait screen] patch !!!"
 else
   echo "ERROR : [mbapk_unpacked] folder not found, please unpack APK first !"
 fi  


   elif [ "$opt" == 'Remove app from launcher' ]; then
    if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked ]
 then
   echo "Applying patch [Remove app from launcher]..."
   echo "Patching [AndroidManifest.xml]..."
   sed -i 's|<category android:name="android.intent.category.LAUNCHER"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
 else
   echo "ERROR : [mbapk_unpacked] folder not found, please unpack APK first !"
 fi

    elif [ "$opt" == 'Bypass accessibility & malicious apps check' ]; then
    if [ -d ~/mbbpatch/MBCPApp/patches/bypass_accessibility_applist ]
 then
    echo "This will trigger device not secure dialog on v6.4.56, do not apply if you have v6.4.56!"
    echo "Applying patch [Bypass accessibility & malicious apps check]..."
    echo Copying patched code [MbbankUtilitiesPlugin]...
    cp -r -f 'patches/bypass_accessibility_applist/com' 'mbapk/mbapk_unpacked/smali_classes3'
    echo Patching [AndroidManifest.xml]...
    sed -i 's|<uses-permission android:name="android.permission.QUERY_ALL_PACKAGES"/>| |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml 
    echo Patching [libapp.so]...  
      sed -i 's|PackageName|packageMBBB|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
      sed -i 's|PackageName|packageMBBB|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so   
      sed -i 's|packageName|packageMBBa|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
      sed -i 's|packageName|packageMBBa|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so   
    echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/bypass_accessibility_malicious_app_check.inf'
    echo "Applied [Bypass accessibility & malicious apps check] patch !!!"
 else
    echo "Patch not found ! Aborting :)"
 fi

    elif [ "$opt" == 'Remove garbage permission and activities' ]; then
    if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked ]
 then
    echo "Applying patch [Remove garbage permission and activities]..."
    echo "Patching [AndroidManifest.xml]..."
    sed -i 's|android:protectionLevel="signature"|android:protectionLevel="normal"|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
    sed -i 's|<uses-permission android:name="com.android.vending.CHECK_LICENSE" android:required="false"/>| |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
    sed -i 's|<uses-permission android:name="com.google.android.gms.permission.AD_ID"/>| |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
    sed -i 's| <uses-permission android:name="com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY" android:required="false"/>| |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
    sed -i 's|<activity android:launchMode="singleTop" android:name="com.vtap.MaintenanceActivity" android:screenOrientation="portrait" android:theme="@style/AppTheme"/>"/>| |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
    sed -i 's|<permission android:name="com.mbmobile.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION" android:protectionLevel="signature"/>"| |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
    sed -i 's|<activity android:launchMode="singleTop" android:name="com.vtap.MaintenanceActivity" android:screenOrientation="portrait" android:theme="@style/AppTheme"/>| |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
    sed -i 's|<activity android:name="com.vkey.android.vguard.VGDialogActivity" android:theme="@style/NoTitleDialog"/>| |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
    echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/remove_garbage_permission_and_activities.inf'
    echo "Applied [Remove garbage permission and activities] patch !!!" 

 else
    echo "[mbapk_unpacked] not found ! Please unpack APK !"
 fi

     elif [ "$opt" == 'Remove eMBee' ]; then
     echo "WARNING : Remove eMBee also remove customer support and any other options on eMBee Helper !"
     echo "Removing eMBee Customer support function..."
     sed -i 's|group_button_support|itsnotworthittouseem|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
     sed -i 's|group_button_support|itsnotworthittouseem|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
     sed -i 's|Customer support|                |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
     sed -i 's|Customer support|                |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
     echo "Removing eMBee..."
     rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/eMBee_img_page.webp'
     rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/eMBee_img_header.webp'
     rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/eMBee_img_login.webp'
     # Priority support
     rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/priority/eMBee_img_page.webp'
     rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/priority/eMBee_img_header.webp'
     rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/priority/eMBee_img_login.webp'   
     # Private support  
     rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/eMBee_img_page.private.webp'
     rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/eMBee_img_login.private.webp'
     rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/eMBee_img_header.private.webp'
     

     # Adapt for v6.4.53+
     rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/eMBee_img_headerNew.private.webp'
     rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/eMBee_img_headerNew.webp'
     # Private support
     rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/eMBee_img_loginSupport.private.webp'
     rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/eMBee_img_loginSupport.webp'
     # Priority support 
     rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/priority/eMBee_img_headerNew.webp'
     rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/priority/eMBee_img_loginSupport.webp'

     echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/remove_embee.inf'

     echo "Applied [Remove eMBee] patch !!!"

     elif [ "$opt" == 'Remove VNPAY VMB20' ]; then
     echo "Applying patch..."
     rm -rf 'mbapk/mbapk_unpacked/smali_classes4/com/vnpay'
     rm -rf 'mbapk/mbapk_unpacked/smali_classes4/com/d5'
     rm -rf 'mbapk/mbapk_unpacked/smali_classes5/com/u4'
     rm -rf 'mbapk/mbapk_unpacked/smali_classes5/com/v4'
     rm -rf 'mbapk/mbapk_unpacked/smali_classes5/com/x2'
     rm -rf 'mbapk/mbapk_unpacked/smali_classes5/com/y4'
     rm -rf 'mbapk/mbapk_unpacked/smali_classes5/com/z4'
     rm -rf 'mbapk/mbapk_unpacked/smali/com/a5'
     rm -rf 'mbapk/mbapk_unpacked/smali/com/ay4
     rm -rf 'mbapk/mbapk_unpacked/smali/com/az4
     rm -rf 'mbapk/mbapk_unpacked/smali/com/c5'
     rm -rf 'mbapk/mbapk_unpacked/smali/com/d5'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP10.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP11.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP12.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP13.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP14.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP15.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP16.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP17.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP18.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP19.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP20.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP21.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP22.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP23.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP24.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP25.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP26.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP27.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP28.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP29.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP30.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP31.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP32.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP33.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP34.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP35.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP36.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP37.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP38.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP39.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP40.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP41.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP42.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP43.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP44.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP45.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP46.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP47.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP48.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP49.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP50.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP51.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP52.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP53.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP54.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP55.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP56.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP57.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP58.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP59.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP60.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP61.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP62.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP63.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP64.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP65.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP66.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP67.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP68.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP69.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP70.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP71.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP72.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP73.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP74.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP75.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP76.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP80.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP82.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes5/mbshield/EP9.smali'
     rm -f 'mbapk/mnapk_unpacked/res/drawable-xhdpi/ic_home_vna.png'
     rm -f 'mbapk/mnapk_unpacked/res/drawable-xhdpi/logo_vnairline.png'
     rm -f 'mbapk/mnapk_unpacked/res/drawable-xxhdpi/ic_home_vna.png'
     rm -f 'mbapk/mnapk_unpacked/res/drawable-xxhdpi/logo_vnairline.png'
     echo "Removing resources..."

     cd ~/mbbpatch/MBCPApp

      # Remove activity
      sed -i 's| <activity android:name="com.vnpay.ticketlib.Activity.VMB20BlankActivity" android:supportsRtl="true" android:theme="@style/Theme.Transparent"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.FlightTracking.SearchingResultActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.FlightTracking.FlightSearchingActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.FlightTracking.FollowingFlightActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.FlightTracking.FlightDetailActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.Activity.VMB20TimChuyenBayActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.Activity.VMB20ThoiGianActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.Activity.VMB20DiaDiemActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.Activity.VMB20HangHangKhongActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.Activity.VMB20LoadingActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.Activity.confirm.VMBConfirmBookActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.Activity.VMB20BookFlightSuccessActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.Activity.VMB20BookHistoryActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.Activity.VMB20TicketDetailsActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.Activity.VMB20TermActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.Activity.VMB20InfoServiceActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.Activity.VMB20ActivityThoiGianNew" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.Activity.VMB20BookFlightSuccessActivity2" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.checkin.CheckinActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.checkin.PnrInfoActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.checkin.InitChooseSeatActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.checkin.UpdateInfoActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.checkin.UpdatePassportInfoActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.checkin.ReCheckinActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.checkin.TicketPreviewActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.checkin.CheckinConditionAcitvity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.checkin.SendMailActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.checkin.TermConditionActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.FlightTracking.FlightTrackingMapActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.VjAddOn.VJInfoFlightActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.VjAddOn.rename.VMBChangeNameActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.VjAddOn.rename.VJDetailFeeActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.VjAddOn.changeFlight.VJChangeFlightActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.VjAddOn.VJListFlightActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.VjAddOn.VJHistoryActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.VjAddOn.history.VJInfoTicketActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.VjAddOn.VJTermActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.VjAddOn.history.VJDetailTicketActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.VjAddOn.ancillary.VJAddOnMealActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.Activity.VMB20PaylaterActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustResize"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.ebill.VMB20EBillActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.ebill.VMB20ConfirmExportBillActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustResize"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.VjAddOn.VJConfirmActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustResize"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.Activity.VMB20FlightActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustResize"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.Activity.VMB20AirportActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustResize"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.Activity.VMB20IFlightActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustResize"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.Activity.VMB20NewSortActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustResize"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.Activity.VMB20DetailFlightActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustResize"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.VjAddOn.VMBManagerBookingActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustResize"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.VjAddOn.VMBDetailFeeActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustResize"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.VjAddOn.VMBInfoFlightActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustResize"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.VjAddOn.VMBSeatMapActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustResize"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.VjAddOn.seats.VMBInfoSeatActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustResize"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.VjAddOn.ancillary.VNBL.VMBVNBLActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustResize"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.Voucher.VMBListVoucherActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustResize"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.Voucher.VMBDetailVoucherActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustResize"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <service android:enabled="true" android:exported="false" android:name="com.vnpay.tracking.ExitService" android:stopWithTask="false"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <receiver android:enabled="false" android:exported="false" android:name="com.vnpay.tracking.TrackingReceiver"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:exported="false" android:name="com.vnpay.ticketlib.Activity.contact.VMBAddInfoActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.Activity.contact.VMBPassengerContactActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:exported="false" android:name="com.vnpay.ticketlib.Activity.infobook.VMBNewInfoBookActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustResize"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:exported="false" android:name="com.vnpay.ticketlib.Activity.search.VMBNewSearchActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:exported="false" android:name="com.vnpay.ticketlib.Activity.search.VMBSortINTFlightActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:exported="false" android:name="com.vnpay.ticketlib.Activity.iflight.VMBNewIFlightsActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:exported="false" android:name="com.vnpay.ticketlib.Activity.iflight.VMBQuotePriceIFlightActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:name="com.vnpay.ticketlib.checkin.PnrReviewActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:exported="false" android:name="com.vnpay.ticketlib.Activity.contact.VMBAddInfoActivity" android:theme="@style/VMB20TranslucentStatusBar" android:windowSoftInputMode="adjustPan"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <activity android:exported="false" android:name="com.vnpay.air.ticket.vnpay_air_ticket.PaymentActivity">| <activity android:exported="false" android:name="test.app">|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <action android:name="_vemaybay_payment"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <action android:name="_vemaybay_payment_without_paymentcode"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
      sed -i 's| <action android:name="_vemaybay_payment_paylater"/>||g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml

      cp -f 'patches/remove_vmb20/GeneratedPluginRegistrant.smali' 'mbapk/mbapk_unpacked/smali_classes4/io/flutter/plugins'
      rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/static/base/partner/img_vnpay.webp'
      rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/static/base/partner/img_vna.webp'
      sed -i 's|vna_flight_landing|broken_vna_ehh_idk|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
      sed -i 's|vna_flight_landing|broken_vna_ehh_idk|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
      

      echo "Applied patch [Remove VNPAY VMB20] !!"
      echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/remove_vnpay_vmb20.inf'

     elif [ "$opt" == 'Revert old eMBee logo' ]; then
     if [ -d ~/mbbpatch/MBCPApp/patches/revert_old_eMBee ]
   then
     echo "Removing new eMBee logo..."
     rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/customerService_img_avatarChat.webp'
     rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/customerService_img_avatarChat01.webp'
     rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/customerService_img_avatarChat02.webp'
     rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/customerService_img_avatarChat03.webp'
     rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/customerService_img_avatarChat04.webp'
     echo "Copying old eMBee logo..."
     cp -f 'patches/revert_old_eMBee/customerService_img_avatarChat.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
     cp -f 'patches/revert_old_eMBee/customerService_img_avatarChat01.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
     cp -f 'patches/revert_old_eMBee/customerService_img_avatarChat02.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
     cp -f 'patches/revert_old_eMBee/customerService_img_avatarChat03.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
     cp -f 'patches/revert_old_eMBee/customerService_img_avatarChat04.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
     cp -f 'patches/revert_old_eMBee/eMBee_img_headerNew.private.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
     cp -f 'patches/revert_old_eMBee/eMBee_img_headerNew.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
     cp -f 'patches/revert_old_eMBee/eMBee_img_loginSupport.private.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
     cp -f 'patches/revert_old_eMBee/eMBee_img_loginSupport.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'

     # Priority exclusive
     cp -f 'patches/revert_old_eMBee/eMBee_img_headerNew.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/priority'
     cp -f 'patches/revert_old_eMBee/eMBee_img_loginSupport.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/priority'

     # Restore old eMBee account profile picture (present before on MB React Native)
     cp -f 'patches/revert_old_eMBee/homeLanding_img_avatarDefault.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
     cp -f 'patches/revert_old_eMBee/homeLanding_img_avatarDefault.private.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
     cp -f 'patches/revert_old_eMBee/homeLanding_img_avatarDefault.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/priority'


     echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/revert_old_embee.inf'
     echo "Applied [Revert old eMBee logo] patch !!!"

   else
      echo "[revert_old_eMBee] patch not found !"
   fi

     elif [ "$opt" == 'Remove invoke to mbshield' ]; then
     if [ -d ~/mbbpatch/MBCPApp/patches/noinvoke ]
   then
     echo "Currently only support remove invoke mbshield to [io.flutter.plugins.MainActivity] and [MBBHomeWidgetQR] !!!"
     echo "Copying..."
     rm -f 'mbapk/mbapk_unpacked/smali_classes4/io/flutter/plugins/MainAcitivity.smali'
     rm -f 'mbapk/mbapk_unpacked/smali_classes4/io/flutter/plugins/MBBHomeWidgetQR.smali'
     cp -f 'patches/noinvoke/MainActivity.smali' 'mbapk/mbapk_unpacked/smali_classes4/io/flutter/plugins'
     cp -f 'patches/noinvoke/MBBHomeWidgetQR.smali' 'mbapk/mbapk_unpacked/smali_classes4/io/flutter/plugins'
     echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/remove_invoke_to_mbshield.inf'
     echo "Applied [Remove invoke to mbshield] patch !!!"
   else
     echo "noinvoke patch not found!"
   fi

   elif [ "$opt" == 'Restore old registration resources' ]; then
   if [ -d ~/mbbpatch/MBCPApp/patches/restore_oldreg ]
then
   echo "Applying patch..."
   cp -f 'patches/restore_oldreg/onboarding_illus_featureAccount.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/static/onboarding'
   cp -f 'patches/restore_oldreg/onboarding_illus_featureFreeService.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/static/onboarding'
   cp -f 'patches/restore_oldreg/onboarding_illus_featureMBS.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/static/onboarding'
   cp -f 'patches/restore_oldreg/onboarding_illus_featureShield.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/static/onboarding'
   cp -f 'patches/restore_oldreg/onboarding_img_referLinkNoneCoin.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/static/onboarding'
   cp -f 'patches/restore_oldreg/onboarding_img_referLinkPersonalCoin.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/static/onboarding'
   echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/restore_old_registration_resources.inf'
   echo "Applied [Restore old registration resources] patch !!!"
else
   echo "[restore_oldreg] not found !"
fi

   # Test remove VPN detection function from bundle, that showing notice warn users to turn off VPN.
   elif [ "$opt" == 'Remove VPN detection' ]; then
   echo "Applying patch..."
      sed -i 's|vpn|app|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
      sed -i 's|vpn|app|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
      echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/remove_vpn_detection.inf'
   echo "Applied [Remove VPN detection patch] !!!"

   elif [ "$opt" == 'Add anime resources' ]; then
   if [ -d ~/mbbpatch/MBCPApp/patches/anime_resources ]
 then
   echo "Applying patch..."
   cp -f 'patches/anime_resources/rating_illus_fiveStar.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/'
   cp -f 'patches/anime_resources/rating_illus_fourStar.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/'
   cp -f 'patches/anime_resources/rating_illus_threeStar.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/'
   cp -f 'patches/anime_resources/rating_illus_twoStar.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/'
   cp -f 'patches/anime_resources/rating_illus_oneStar.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/'
   echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/add_anime_resources.inf'
   echo "Applied [Add anime resources] patch !"
 else
   echo "[anime_resources] not found !"
 fi

   elif [ "$opt" == 'Set targetSdkVersion to 35' ]; then
   if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked ]
 then
   echo "Applying patch..."
   sed -i 's|targetSdkVersion: 34|targetSdkVersion: 35|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/apktool.yml
 else
   echo "ERROR : [mbapk_unpacked] folder not found, please unpack APK first !"
 fi

     elif [ "$opt" == 'Remove animated QR background' ]; then
   if [ -d ~/mbbpatch/MBCPApp/patches/qr_white ]
then
   echo "This will remove animated QR on bottom navigation bar and replace with white background !"
   echo "Removing animated QR..."
   rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/static/homeLanding_bg_qrCode.gif' 
   echo "Copying new static white background..."
   mv 'patches/qr_white/150.png' 'patches/qr_white/homeLanding_bg_qrCode.gif' > /dev/null 2>&1
   cp -f 'patches/qr_white/homeLanding_bg_qrCode.gif' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/static'
   echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/remove_animated_qr_background.inf'
   echo "Applied [Remove animated QR background] patch !!!"
else
   echo "[qr_white] not found !"
fi     

     elif [ "$opt" == 'Remove banners & MiniApp' ]; then
    if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked ]
 then
    echo "Applying patch [Remove banners & MiniApp]..."
    echo Removing banner links from [libapp.so]...
    sed -i 's|banner|remove|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|banner|remove|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|marketplacehome|removemarketapp|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|marketplacehome|removemarketapp|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so

    echo Removing related resources...
    rm -rf 'mbapk/mbapk_unpacked/assets/flutter_assets/packages'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/billing_img_defaultBanner.webp'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/billing_img_defaultBanner.private.webp'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/explore_img_defaultBanner.webp'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/coreBanking_img_successBanner.webp'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/homeLanding_img_defaultBanner.webp'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/homeLanding_img_defaultBanner.private.webp'
    # Priority exclusive
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/priority/explore_img_defaultBanner.webp'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/priority/coreBanking_img_successBanner.webp'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/priority/homeLanding_img_defaultBanner.webp'

    # Shield related resources
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/khien_img_hoadon.private.webp'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/khien_img_muasam.private.webp'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/khien_img_offline.private.webp'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/khien_img_hoadon.webp'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/khien_img_muasam.webp'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/khien_img_offline.webp'

    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/priority/khien_img_hoadon.webp'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/priority/khien_img_muasam.webp'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/priority/khien_img_offline.webp'

    

    # 
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/static/banner_transfer_mass.webp'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/static/banner_transfer_private.webp'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/static/recap_banner.webp'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/static/poster_cyberrisk_noti.webp'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/static/onboarding/ads_banner_borigin.webp'

    echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/remove_banner_miniapp.inf'
   
    echo "Applied [Remove banners & MiniApp] patch !!!"

 else
    echo "[mbapk_unpacked] folder not found ! Please unpack APK first !"
 fi

    elif [ "$opt" == 'Remove new root detection' ]; then
    if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked ]
 then
    echo "Applying [Remove new root detection] patch..."
    echo Removing [libZDefend.so]...
    rm -f 'mbapk/mbapk_unpacked/lib/arm64-v8a/libZDefend.so'
    rm -f 'mbapk/mbapk_unpacked/lib/armeabi-v7a/libZDefend.so'
    echo Removing [libvvb2060.so]...
    rm -f 'mbapk/mbapk_unpacked/lib/arm64-v8a/libvvb2060.so'
    rm -f 'mbapk/mbapk_unpacked/lib/armeabi-v7a/libvvb2060.so'
    echo Removing [libtoolChecker.so]...
    rm -f 'mbapk/mbapk_unpacked/lib/arm64-v8a/libtoolChecker.so'
    rm -f 'mbapk/mbapk_unpacked/lib/armeabi-v7a/libtoolChecker.so'
    echo Removing [libdesignersactivists.so]...
    rm -f 'mbapk/mbapk_unpacked/lib/arm64-v8a/libdesignersactivists.so'
    rm -f 'mbapk/mbapk_unpacked/lib/armeabi-v7a/libdesignersactivists.so'
    echo Removing related files...
    sleep 3
    rm -rf 'mbapk/mbapk_unpacked/assets/zfiles'
    rm -f 'mbapk/mbapk_unpacked/assets/dlangV5.dat'
    rm -f 'mbapk/mbapk_unpacked/assets/dlangV5.en.dat'
    rm -f 'mbapk/mbapk_unpacked/assets/policy0'
    rm -f 'mbapk/mbapk_unpacked/assets/policy1'
    rm -f 'mbapk/mbapk_unpacked/assets/policy2'
    rm -f 'mbapk/mbapk_unpacked/assets/policy3'
    rm -f 'mbapk/mbapk_unpacked/assets/policy4'
    rm -f 'mbapk/mbapk_unpacked/assets/policy5'
    rm -f 'mbapk/mbapk_unpacked/assets/policy6'
    rm -f 'mbapk/mbapk_unpacked/assets/policy8'
    rm -f 'mbapk/mbapk_unpacked/assets/policy9'
    rm -f 'mbapk/mbapk_unpacked/assets/policym'
    rm -f 'mbapk/mbapk_unpacked/assets/rulesV5.dat'
    rm -rf 'mbapk/mbapk_unpacked/smali/androidx/UnderlyingVcl'
    rm -f 'mbapk/mbapk_unpacked/smali/androidx/UnderlyingVcl.smali'
    echo "Patching [AndroidManifest.xml]"
    sed -i 's|<provider android:authorities="com.mbmobile.honor.essence.enter" android:exported="false" android:name="androidx.cigarette.titles.corporation.moscow.Township"/>| |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml 
    sed -i 's|<provider android:authorities="com.mbmobile.inserted.thumbzilla.ireland" android:exported="false" android:name="androidx.UnderlyingVcl"/>| |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
    echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/remove_new_root_detection.inf'
    echo "Applied [Remove new root detection] patch !!!"

 else
    echo "[mbapk_unpacked] not found ! Please unpack APK first ! "
 fi

    elif [ "$opt" == 'Add modified resources' ]; then
    if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked ]
 then
    echo "Applying patch [Add modified resources]..."
    echo "Copying modified resources..."
    cp -r -f 'patches/resources/raw' 'mbapk/mbapk_unpacked/res/'
    cp -f 'patches/resources/strings-vi/strings.xml' 'mbapk/mbapk_unpacked/res/values-vi/'
    echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/add_modified_resources.inf'
    echo "Applied [Add modified resources] patch !!!"
 else
    echo "[mbapk_unpacked] not found ! Please unpack APK first !"
    fi

elif [ "$opt" == 'Remove bulit-in fonts' ]; then
    if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked ]
 then
    echo "Applying patch [Remove bulit-in fonts]..."
    echo "Removing..."
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-Black.otf'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-BlackItalic.otf'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-Bold.otf'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-BoldItalic.otf'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-Extrabold.otf'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-ExtraboldItalic.otf'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCy-Extrathin.otf'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCy-ExtrathinItalic.otf'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-Light.otf'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-LightItalic.otf'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-Regular.otf'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-RegularItalic.otf'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-Semibold.otf'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-SemiboldItalic.otf'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-Thin.otf'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-ThinItalic.otf'
    rm -f 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/SF-Pro-Display-Medium.ttf'
    rm -f 'mbapk/mbapk_unpacked/res/font/avenir_next_bold.ttf'
    rm -f 'mbapk/mbapk_unpacked/res/font/bold.ttf'
    rm -f 'mbapk/mbapk_unpacked/res/font/medium.ttf'
    rm -f 'mbapk/mbapk_unpacked/res/font/regular.ttf'
    rm -f 'mbapk/mbapk_unpacked/assets/insider.ttf'
    # Placeholder font to fix display issues when open details balance notifications 
    echo "Creating placeholder font..."
    touch 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-Regular.otf' 
    # Placeholder to prevent compiling resource fail
    touch 'mbapk/mbapk_unpacked/res/font/avenir_next_bold.ttf'
    echo Copying fix fonts...
    # NFC scanning phase requires actual font in order to not throw exception
    cp -f 'patches/resources/font/bold.ttf' 'mbapk/mbapk_unpacked/res/font/'
    cp -f 'patches/resources/font/medium.ttf' 'mbapk/mbapk_unpacked/res/font/'
    cp -f 'patches/resources/font/regular.ttf' 'mbapk/mbapk_unpacked/res/font/'
    echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/remove_bulitin_fonts.inf'
    echo "Applied [Remove bulit-in fonts] patch !!!"
 else
    echo "[mbapk_unpacked] not found ! Please unpack APK first !"
    fi


elif [ "$opt" == 'Modify app theme' ]; then 
    if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked ]
 then 
    echo In order to modify app theme, you must extract assets first if current unpacked APK has MBShield!
    PS3='Select themes : '
select opt in 'MBCP SemiPriority' 'MBCP MBClassic' 'Noel 2024' 'Exit'
do
    if [ "$opt" == 'MBCP SemiPriority' ]; then
    echo Moving [priority] folder...
    mv 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/priority' 'patches/semipriority/'
    sleep 2
    echo Modifying QR background...
    rm -f 'patches/semipriority/priority/qr_img_ThemeDefalut.webp'
    mv 'patches/semipriority/priority/a_background_image.webp' 'patches/semipriority/priority/qr_img_ThemeDefalut.webp'
    echo Renaming to [base]...
    mv 'patches/semipriority/priority' 'patches/semipriority/base'
    echo Copying to [flutter_assets/assets/images/dynamic/base]
    cp -r -f 'patches/semipriority/base' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic' 
    sleep 2
    echo Renaming back to [priority]
    mv 'patches/semipriority/base' 'patches/semipriority/priority'
    echo Copying back to [flutter_assets]...
    cp -r -f 'patches/semipriority/priority' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic' 
    sleep 2
    echo Copying [ic_logo_mb_text.svg]...
    cp -f 'patches/semipriority/ic_logo_mb_text.svg' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/svgs/'
    echo Copying [welcom_img_eMbee.webp]...
    cp -f 'patches/semipriority/welcom_img_eMbee.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    echo Cleaning...
    rm -rf 'patches/semipriority/priority'
    sleep 2
    echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/semipriority_theme.inf'
    echo "Applied [MBCP SemiPriority] theme."



    elif [ "$opt" == 'MBCP MBClassic' ]; then
    echo "Ensure that you did NOT applied SemiPriority theme before apply this theme !"
    echo "Otherwise it will conflicts like mixed SemiPriority and MB Classic theme, You've warned !!! "
    cp -f 'patches/mbclassic/a_background_image.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    cp -f 'patches/mbclassic/general_bg_screenshot.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    cp -f 'patches/mbclassic/homeLanding_bg_main.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    cp -f 'patches/mbclassic/loading_bg_main.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    cp -f 'patches/mbclassic/login_bg_main.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    cp -f 'patches/mbclassic/qr_img_ThemeDefalut.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    echo "Patching [AndroidManifest.xml]..."
    sed -i 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenLoginClassic.png|https://gitlab.com/-/project/56341767/uploads/f585b28f88876db211f116d1d622031d/mbcp_login.png?git1|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenLoginClassic.png|https://gitlab.com/-/project/56341767/uploads/f585b28f88876db211f116d1d622031d/mbcp_login.png?git1|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_thumbnailClassic.png|https://gitlab.com/-/project/56341767/uploads/ba4f0923a4956ba379868e01c55e9cfb/thumb.png?aaaaaaa|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_thumbnailClassic.png|https://gitlab.com/-/project/56341767/uploads/ba4f0923a4956ba379868e01c55e9cfb/thumb.png?aaaaaaa|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenHomeClassic.png|https://gitlab.com/-/project/56341767/uploads/1d7fcf300167e87440220a6f0d28b8c1/mbcp_lobby.png?aaa|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenHomeClassic.png|https://gitlab.com/-/project/56341767/uploads/1d7fcf300167e87440220a6f0d28b8c1/mbcp_lobby.png?aaa|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenSuccessClassic.png|https://gitlab.com/-/project/56341767/uploads/d94e257eb6cf59865016a939541c32fc/mbcp_transfer.png?aaa|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenSuccessClassic.png|https://gitlab.com/-/project/56341767/uploads/d94e257eb6cf59865016a939541c32fc/mbcp_transfer.png?aaa|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/mbclassic_theme.inf'
    echo Applied [MBCP MBClassic] theme.

    elif [ "$opt" == 'Noel 2024' ]; then
    echo "Ensure that you did NOT applied SemiPriority theme before apply this theme !"
    echo "Otherwise it will conflicts like mixed SemiPriority and Noel 2024 theme, You've warned !!! "
    cp -f 'patches/noel/a_background_image.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    cp -f 'patches/noel/bill_background_gold.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    cp -f 'patches/noel/coreBanking_img_successBackground.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    cp -f 'patches/noel/general_bg_screenshot.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    cp -f 'patches/noel/general_bg_success.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    cp -f 'patches/noel/homeLanding_bg_main.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    cp -f 'patches/noel/loading_bg_main.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    cp -f 'patches/noel/login_bg_main.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    cp -f 'patches/noel/qr_img_ThemeDefalut.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    ##############
    cp -f 'patches/noel/a_background_image.png' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    cp -f 'patches/noel/bill_background_gold.png' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    cp -f 'patches/noel/coreBanking_img_successBackground.png' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    cp -f 'patches/noel/general_bg_screenshot.png' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    cp -f 'patches/noel/general_bg_success.png' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    cp -f 'patches/noel/homeLanding_bg_main.png' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    cp -f 'patches/noel/loading_bg_main.png' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    cp -f 'patches/noel/login_bg_main.png' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    cp -f 'patches/noel/qr_img_ThemeDefalut.png' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    # Change theme preview
    cp -f 'patches/noel/customUI_img_classicMode.png' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    cp -f 'patches/noel/customUI_img_classicMode.webp' 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base'
    # Lockdown ability to change other theme, also force Noel 2024 theme
    echo "Patching [libapp.so]..."
    sed -i 's|theme|Noel |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|theme|Noel |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    # Settings
    sed -i 's|Change Noel |Noel 2024   |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|Change Noel |Noel 2024   |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so

    echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/noel2024_theme.inf'
    echo "INFO : You WON'T be able to use other theme than Noel 2024 on app !"

    echo "Applied [Noel 2024] theme."
     elif [ "$opt" == 'Exit' ]; then
        sh patch.sh
        break
    fi
done


 else 
    echo "[mbapk_unpacked] folder not found, can't continue !"
 fi


elif [ "$opt" == 'Change app logo' ]; then
    echo -------------------------------------------
    echo -------------------------------------------
    PS3='Select app icon variant to continue, or [7] to quit : '
    select opt in 'MB Classic' 'Tet' 'Valentine 2025' '30/4-1/5' 'Summer 2025' 'Noel' 'Exit'
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
        echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/change_app_logo.inf'
        echo Applied selected logo !
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
        echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/change_app_logo.inf'
        echo Applied selected logo !
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
        echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/change_app_logo.inf'
        echo Applied selected logo !
    else
        echo "[mbapk_unpacked] not found ! Please unpack APK first !"
    fi

      elif [ "$opt" == 'Valentine 2025' ]; then
         if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked ]
      then
         echo "Removing old logos..."
         rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-hdpi
         rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-mdpi
         rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-xhdpi
         rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-xxhdpi
         rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-xxxhdpi
         echo "Copying new logos to [mbapk_unpakced/res] !!!"
         cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/valentine/mipmap-hdpi mbapk/mbapk_unpacked/res
         cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/valentine/mipmap-mdpi mbapk/mbapk_unpacked/res
         cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/valentine/mipmap-xhdpi mbapk/mbapk_unpacked/res
         cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/valentine/mipmap-xxhdpi mbapk/mbapk_unpacked/res
         cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/valentine/mipmap-xxxhdpi mbapk/mbapk_unpacked/res
         echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/change_app_logo.inf'
         echo "Applied selected logo !"
      else 
         ehco "[mbapk_unpacked] not found ! Please unpack APK first !"
      fi

      elif [ "$opt" == 'Summer 2025' ]; then
         if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked ]
      then
         echo "Removing old logos..."
         rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-hdpi
         rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-mdpi
         rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-xhdpi
         rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-xxhdpi
         rm -rf ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/res/mipmap-xxxhdpi
         echo "Copying new logos to [mbapk_unpakced/res] !!!"
         cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/summer2025/mipmap-hdpi mbapk/mbapk_unpacked/res
         cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/summer2025/mipmap-mdpi mbapk/mbapk_unpacked/res
         cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/summer2025/mipmap-xhdpi mbapk/mbapk_unpacked/res
         cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/summer2025/mipmap-xxhdpi mbapk/mbapk_unpacked/res
         cp -r -f ~/mbbpatch/MBCPApp/mbcpicons/summer2025/mipmap-xxxhdpi mbapk/mbapk_unpacked/res
         echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/change_app_logo.inf'
         echo "Applied selected logo !"
      else 
         ehco "[mbapk_unpacked] not found ! Please unpack APK first !"
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
        echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/change_app_logo.inf'
        echo Applied selected logo !
    else
        echo "[mbapk_unpacked] not found ! Please unpack APK first !"
    fi


        elif [ "$opt" == 'Exit' ]; then
        sh patch.sh

        break
    fi
done

   elif [ "$opt" == 'Hide VTAP root detection activity & dialog' ]; then
    if [ -d ~/mbbpatch/MBCPApp/patches/skip_maintainscreen ]
 then
    echo "Applying [Hide VTAP root detection activity & dialog]..."
    # Adapt with v6.4.53+
    sed -i 's|Lcom/vtap/MaintenanceActivity;|Lio/flutter/plugins/MainActivity;|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/smali_classes4/com/vtap/d.smali > /dev/null 2>&1

    sed -i 's|Lcom/vtap/MaintenanceActivity;|Lio/flutter/plugins/MainActivity;|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/smali_classes4/com/vtap/VTapSetupPlugin.smali  > /dev/null 2>&1
    rm -f 'mbapk/mbapk_unpacked/smali_classes4/com/vtap/MaintenanceActivity.smali'
    rm -f 'mbapk/mbapk_unpacked/smali_classes4/com/vtap/MaintenanceActivity$1.smali'
    rm -f 'mbapk/mbapk_unpacked/smali_classes4/com/vkey/android/vguard/VGDialogActivity.smali'
    sed -i 's|Lcom/vkey/android/vguard/VGDialogActivity;|Lio/flutter/plugins/MainActivity;|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/smali_classes4/com/vkey/android/dy.smali
    # Bypass VKey root check that throw VGFullScreenDialogActivity then exit :)
    cp -f 'patches/bypass_rootold/BasicThreatInfo.smali' 'mbapk/mbapk_unpacked/smali_classes4/com/vkey/android/internal/vguard/engine/'
    cp -f 'patches/bypass_rootold/VGThreatAppInfo.smali' 'mbapk/mbapk_unpacked/smali_classes4/com/vkey/android/vguard/model/'
    cp -f 'patches/bypass_rootold/VGThreatResponse.smali' 'mbapk/mbapk_unpacked/smali_classes4/com/vkey/android/vguard/model/'
    # Test crash fixes for some Android 13 devices
    sed -i 's|invoke-virtual {v5, v12}, Lcom/vkey/android/vguard/model/VGThreatResponse;->setUsingLegacyMessage(Z)V| |g' 'mbapk/mbapk_unpacked/smali_classes4/com/vkey/android/eg.smali'
    echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/hide_vtap_root_detection_activity.inf'
    echo "Applied [Hide VTAP root detection activity & dialog] patch !!!"
 else
    echo "Patch not found ! Aborting :)"
 fi

    elif [ "$opt" == 'Exit' ]; then
        clear
        ./mbcpapp.sh
        exit
		break
	fi
done

