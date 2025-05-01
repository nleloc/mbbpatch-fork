echo ---------------------------
echo Patch list for MBCPApp :   
PS3='Select patch options : '
select opt in 'Autopatch strings' 'Change app logo' 'Remove bulit-in fonts' 'Modify app theme' 'Remove garbage permission and activities' 'Remove banners & MiniApp' 'Bypass accessibility & malicious apps check' 'Hide VTAP root detection activity & dialog' 'Remove new root detection' 'Add modified resources' 'Bypass signature check' 'Exit'
do
	if [ "$opt" == 'Autopatch strings' ]; then
    if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib ]
 then
    echo Patching strings in [libapp.so]...
    sed -i -e 's/online OTP/DigitalOTP/g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i -e 's/online OTP/DigitalOTP/g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    echo INFO : [online OTP] strings are modified to [DigitalOTP] !
    sed -i -e 's/Online OTP/DigitalOTP/g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i -e 's/Online OTP/DigitalOTP/g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    echo INFO : [Online OTP] strings are modified to [DigitalOTP] !
    sed -i -e 's/MB Bank/MBCPApp/g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i -e 's/MB Bank/MBCPApp/g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    echo INFO : [MB Bank] strings are modified to [MBCPApp] !
    sed -i -e 's/The lastest version/Telegram: @mbbpatch/g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i -e 's/The lastest version/Telegram: @mbbpatch/g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    echo INFO : [The lastest version] strings are modified to [Telegram: @mbbpatch] !
    echo Patching strings in [libapp.so]...
    sed -i 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenLoginClassic.png|https://gitlab.com/-/project/56341767/uploads/f585b28f88876db211f116d1d622031d/mbcp_login.png?git1|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenLoginClassic.png|https://gitlab.com/-/project/56341767/uploads/f585b28f88876db211f116d1d622031d/mbcp_login.png?git1|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_thumbnailClassic.png|https://gitlab.com/-/project/56341767/uploads/ba4f0923a4956ba379868e01c55e9cfb/thumb.png?aaaaaaa|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_thumbnailClassic.png|https://gitlab.com/-/project/56341767/uploads/ba4f0923a4956ba379868e01c55e9cfb/thumb.png?aaaaaaa|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenHomeClassic.png|https://gitlab.com/-/project/56341767/uploads/1d7fcf300167e87440220a6f0d28b8c1/mbcp_lobby.png?aaa|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenHomeClassic.png|https://gitlab.com/-/project/56341767/uploads/1d7fcf300167e87440220a6f0d28b8c1/mbcp_lobby.png?aaa|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenSuccessClassic.png|https://gitlab.com/-/project/56341767/uploads/d94e257eb6cf59865016a939541c32fc/mbcp_transfer.png?aaa|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|https://filestatic.mbbank.com.vn/mbapp-images/rs/prime/ThemeImage/theme_img_screenSuccessClassic.png|https://gitlab.com/-/project/56341767/uploads/d94e257eb6cf59865016a939541c32fc/mbcp_transfer.png?aaa|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|market://details?id=com.mbmobile|https://t.me/mbbpatch/          |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|market://details?id=com.mbmobile|https://t.me/mbbpatch/          |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|User profile|View profile|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|User profile|View profile|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|User ID|Phone  |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|User ID|Phone  |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|MB Membership Package|MB Membership        |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|MB Membership Package|MB Membership        |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|email information|Email information|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|email information|Email information|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|Premium Account Number|Open new lucky account|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|Premium Account Number|Open new lucky account|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|Cashback 150K|AgainstmicroG|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|Cashback 150K|AgainstmicroG|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|Request for supplying password|Request for new password      |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|Request for supplying password|Request for new password      |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|ID card/ID card|Old/New ID card|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|ID card/ID card|Old/New ID card|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|Number of document|Number of id card |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|Number of document|Number of id card |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|Your device will be locked if you enter incorrectly more than 5 times. Please try again or select the "Forgot password" feature to be reissued.|Your account will be locked if you enter incorrectly more than 5 times. Please try again or select the "Forgot password" feature to reset pw...|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|Your device will be locked if you enter incorrectly more than 5 times. Please try again or select the "Forgot password" feature to be reissued.|Your account will be locked if you enter incorrectly more than 5 times. Please try again or select the "Forgot password" feature to reset pw...|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|https://www.facebook.com/VietnamMBBank?mibextid=LQQJ4d|https://gitlab.com/cuynu/mbbpatch/?                   |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|https://www.facebook.com/VietnamMBBank?mibextid=LQQJ4d|https://gitlab.com/cuynu/mbbpatch/?                   |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|Introduction to receive money|Invite using MB              |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|Introduction to receive money|Invite using MB              |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|Shopping-  Entertainment- Investment|Flutter embedded MiniApps           |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|Shopping-  Entertainment- Investment|Flutter embedded MiniApps           |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|Downloaded themes|Your owned themes|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|Downloaded themes|Your owned themes|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|Coming soon|Placeholder|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|Coming soon|Placeholder|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    sed -i 's|Coming Soon|Placeholder|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|Coming Soon|Placeholder|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so



    
 else
     echo "ERROR : [mbapk_unpacked] folder not found, please unpack APK first !"
     echo "ERROR : Auto patch strings requires [mbapk_unpacked] in order to continue !"
 fi 


    elif [ "$opt" == 'Bypass accessibility & malicious apps check' ]; then
    if [ -d ~/mbbpatch/MBCPApp/patches/bypass_accessibility_applist ]
 then
    echo Copying patched code [MbbankUtilitiesPlugin]...
    cp -r -f 'patches/bypass_accessibility_applist/com' 'mbapk/mbapk_unpacked/smali'
    echo Patching [AndroidManifest.xml]
     sed -i 's|<uses-permission android:name="android.permission.QUERY_ALL_PACKAGES"/>| |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml 
    echo "Patched code applied !"
 else
    echo "Patch not found ! Aborting :)"
 fi

    elif [ "$opt" == 'Remove garbage permission and activities' ]; then
    if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked ]
 then
    echo Patching [AndroidManifest.xml]...
    sed -i 's|android:protectionLevel="signature"|android:protectionLevel="normal"|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
    sed -i 's|<uses-permission android:name="com.android.vending.CHECK_LICENSE" android:required="false"/>| |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
    sed -i 's|<uses-permission android:name="com.google.android.gms.permission.AD_ID"/>| |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
    sed -i 's| <uses-permission android:name="com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY" android:required="false"/>| |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
    sed -i 's|<activity android:launchMode="singleTop" android:name="com.vtap.MaintenanceActivity" android:screenOrientation="portrait" android:theme="@style/AppTheme"/>"/>| |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml
    
 else
    echo "[mbapk_unpacked] not found ! Please unpack APK !"
 fi
 

     elif [ "$opt" == 'Remove banners & MiniApp' ]; then
    if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked ]
 then
    echo Removing banner links from [libapp.so]...
    sed -i 's|banner|remove|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/arm64-v8a/libapp.so
    sed -i 's|banner|remove|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/lib/armeabi-v7a/libapp.so
    echo Removing garbage resources...
    rm -rf 'mbapk/mbapk_unpacked/assets/flutter_assets/packages'
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/billing_img_defaultBanner.webp'
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/billing_img_defaultBanner.private.webp'
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/explore_img_defaultBanner.webp'
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/coreBanking_img_successBanner.webp'
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/homeLanding_img_defaultBanner.webp'
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/base/homeLanding_img_defaultBanner.private.webp'
    # Priority exclusive
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/priority/explore_img_defaultBanner.webp'
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/priority/coreBanking_img_successBanner.webp'
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/priority/homeLanding_img_defaultBanner.webp'
    echo Patch applied !

 else
    echo if
 fi


    elif [ "$opt" == 'Bypass signature check' ]; then
    if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked ]
 then 
    # Checks for MBShield, if exists then exit function
    if [ -f ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/assets/mbshield.szip ]
 then
    echo "INFO : MBShield found on unpacked APK ! Bypass signature checks won't be possible if MBShield is present on current unpacked APK !"
    echo "INFO : Please use supported version !!!"
    echo For React Native : MBBank/MB Lite v1.0 up to v6.3.11
    echo For Flutter : MBBank v6.4.0 up to v6.4.21
    echo Some specific version has no MBShield can also be used :
    echo MBBank v6.4.24 [versionCode : 624]
    echo MBBank v6.4.26 [versionCode : 626]
    echo MBBank v6.4.45 [versionCode : 658]
    else
    echo "Function not yet implemented due to issues with original repo, check back later !"
   
    fi
    else
    echo APK are not unpacked ! Please unpack APK first !
fi

    elif [ "$opt" == 'Remove new root detection' ]; then
    if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked ]
 then
    echo Removing [libZDefend.so]...
    rm 'mbapk/mbapk_unpacked/lib/arm64-v8a/libZDefend.so'
    rm 'mbapk/mbapk_unpacked/lib/armeabi-v7a/libZDefend.so'
    echo Removing [libvvb2060.so]...
    rm 'mbapk/mbapk_unpacked/lib/arm64-v8a/libvvb2060.so'
    rm 'mbapk/mbapk_unpacked/lib/armeabi-v7a/libvvb2060.so'
    echo Removing [libtoolChecker.so]...
    rm 'mbapk/mbapk_unpacked/lib/arm64-v8a/libtoolChecker.so'
    rm 'mbapk/mbapk_unpacked/lib/armeabi-v7a/libtoolChecker.so'
    echo Removing garbage files...
    sleep 3
    rm -rf 'mbapk/mbapk_unpacked/assets/zfiles'
    rm 'mbapk/mbapk_unpacked/assets/dlangV5.dat'
    rm 'mbapk/mbapk_unpacked/assets/dlangV5.en.dat'
    rm 'mbapk/mbapk_unpacked/assets/policy0'
    rm 'mbapk/mbapk_unpacked/assets/policy1'
    rm 'mbapk/mbapk_unpacked/assets/policy2'
    rm 'mbapk/mbapk_unpacked/assets/policy3'
    rm 'mbapk/mbapk_unpacked/assets/policy4'
    rm 'mbapk/mbapk_unpacked/assets/policy5'
    rm 'mbapk/mbapk_unpacked/assets/policy6'
    rm 'mbapk/mbapk_unpacked/assets/policy8'
    rm 'mbapk/mbapk_unpacked/assets/policy9'
    rm 'mbapk/mbapk_unpacked/assets/policym'
    rm 'mbapk/mbapk_unpacked/assets/rulesV5.dat'
    echo Modifying [AndroidManifest.xml]
    sed -i 's|<provider android:authorities="com.mbmobile.honor.essence.enter" android:exported="false" android:name="androidx.cigarette.titles.corporation.moscow.Township"/>| |g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/AndroidManifest.xml 


 else
    echo "[mbapk_unpacked] not found ! Please unpack APK ! "
 fi

    elif [ "$opt" == 'Add modified resources' ]; then
    if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked ]
 then
    echo "Copying modified resources..."
    cp -r -f 'patches/resources/raw' 'mbapk/mbapk_unpacked/res/'
    cp -f 'patches/resources/strings-vi/strings.xml' 'mbapk/mbapk_unpacked/res/values-vi/'
 else
    echo "[mbapk_unpacked] not found ! Please unpack APK first !"
    fi

elif [ "$opt" == 'Remove bulit-in fonts' ]; then
    if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked ]
 then
    echo "Removing..."
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-Black.otf'
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-BlackItalic.otf'
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-Bold.otf'
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-BoldItalic.otf'
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-Extrabold.otf'
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-ExtraboldItalic.otf'
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCy-Extrathin.otf'
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCy-ExtrathinItalic.otf'
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-Light.otf'
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-LightItalic.otf'
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-Regular.otf'
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-RegularItalic.otf'
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-Semibold.otf'
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-SemiboldItalic.otf'
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-Thin.otf'
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-ThinItalic.otf'
    rm 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/SF-Pro-Display-Medium.ttf'
    rm 'mbapk/mbapk_unpacked/res/font/avenir_next_bold.ttf'
    rm 'mbapk/mbapk_unpacked/res/font/bold.ttf'
    rm 'mbapk/mbapk_unpacked/res/font/medium.ttf'
    rm 'mbapk/mbapk_unpacked/res/font/regular.ttf'
    rm 'mbapk/mbapk_unpacked/assets/insider.ttf'
    rm -rf 'mbapk/mbapk_unpacked/assets/font'
    # Placeholder font to fix display issues when open details balance notifications 
    echo "Creating placeholder font..."
    touch 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/fonts/AvertaStdCY-Regular.otf' 
    # Placeholder to prevent compiling resource fail
    touch 'mbapk/mbapk_unpacked/res/font/avenir_next_bold.ttf'
    touch 'mbapk/mbapk_unpacked/res/font/bold.ttf'
    touch 'mbapk/mbapk_unpacked/res/font/medium.ttf'
    touch 'mbapk/mbapk_unpacked/res/font/regular.ttf'






 else
    echo "[mbapk_unpacked] not found ! Please unpack APK first !"
    fi


elif [ "$opt" == 'Modify app theme' ]; then
    if [ -d ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked ]
 then 
    echo In order to modify app theme, you must extract assets first if current unpacked APK has MBShield!
    PS3='Select themes : '
select opt in 'MBCP SemiPriority' 'MBCP MBClassic' 'Exit'
do
    if [ "$opt" == 'MBCP SemiPriority' ]; then
    echo Moving [priority] folder...
    mv 'mbapk/mbapk_unpacked/assets/flutter_assets/assets/images/dynamic/priority' 'patches/semipriority/'
    sleep 2
    echo Modifying QR background...
    rm 'patches/semipriority/priority/qr_img_ThemeDefalut.webp'
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
    echo Applied [MBCP MBClassic] theme.
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
        sh patch.sh

        break
    fi
done

   elif [ "$opt" == 'Hide VTAP root detection activity & dialog' ]; then
    if [ -d ~/mbbpatch/MBCPApp/patches/skip_maintainscreen ]
 then
    echo "Applying patches to [mbapk/mbapk_unpacked/smali_classes4]..."
    rm 'mbapk/mbapk_unpacked/smali_classes4/com/vtap/MaintenanceActivity.smali'
    rm 'mbapk/mbapk_unpacked/smali_classes4/com/vtap/MaintenanceActivity$1.smali'
    rm 'mbapk/mbapk_unpacked/smali_classes4/com/vtap/VTapSetupPlugin.smali'
    cp -r -f 'patches/skip_maintainscreen/com' 'mbapk/mbapk_unpacked/smali_classes4/'
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

