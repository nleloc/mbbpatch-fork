#!/usr/bin/env bash

echo "DO NOT use these patches with newer app!"
echo "Legacy patches list for MBCPApp :"
PS3='Select patch options :'
select opt in 'Bypass 1200 error [v6.4.45]' 'Bypass signature check' '[TEST] Remove v6.4.56 root detection' 'Exit'
do
	if [ "$opt" == 'Bypass 1200 error [v6.4.45]' ]; then
		[ ! -f 'bypass1200/*.apks' ] && echo "Download the [v6.4.47] app from Telegram [@embeeapks] or Google Play API with versionCode 661" && echo "Then copy it to [bypass1200] folder!" && exit 1
		echo "Notice : v6.4.45 are now got [GW525 - Force update !] !!!"
		echo "This patch will remain available but you cannot bypass GW525 error !"
		mkdir -p bypass1200
     		echo "Unpacking..."
     		java -jar tools/apkeditor.jar m -i bypass1200/*.apks
     		java -jar tools/apktool.jar d bypass1200/*.apk -o bypass1200/unpacked -j$(nproc)
     		mv bypass1200/unpacked/lib/arm64-v8a/libapp.so mbapk/mbapk_unpacked/root/lib/arm64-v8a/ 
     		mv bypass1200/unpacked/lib/armeabi-v7a/libapp.so mbapk/mbapk_unpacked/root/lib/armeabi-v7a/ 
     		mv bypass1200/unpacked/lib/arm64-v8a/libflutter.so mbapk/mbapk_unpacked/root/lib/arm64-v8a/ 
     		mv bypass1200/unpacked/lib/armeabi-v7a/libflutter.so mbapk/mbapk_unpacked/root/lib/armeabi-v7a/   
     		echo "Cleaning..."   
     		rm -rf bypass1200
     		## MB Forced update to 658, it must be spoofed!
     		echo "Patching [AndroidManifest.xml]..."
		sed -i 's|658|700|g' "$DIRPATH"/mbapk/mbapk_unpacked/AndroidManifest.xml
     		echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(git show -s --format=%cd HEAD). > 'mbapk/mbapk_unpacked/root/assets/mbcp_info/bypass_1200_error.inf'


	# Use bypass gw934 checksum for this patch instead
	elif [ "$opt" == 'Bypass signature check' ]; then
    		echo "Applying patch [Bypass signature check]..."
	if [ -d "$DIRPATH"/mbapk/mbapk_unpacked ]
 	then 
    	# Checks for zShield (mbshield is zShield), if exists then exit function
	if [ -f "$DIRPATH"/mbapk/mbapk_unpacked/assets/*.szip ]
 	then
    	info "zShield found on unpacked APK ! Bypass signature checks won't be possible if zShield is present on current unpacked APK !"
    	info "Please use supported version !!!"
   	echo "For React Native : MBBank/MB Lite v1.0 up to v6.3.11"
    	echo "For Flutter : MBBank v6.4.0 up to v6.4.21"
    	echo "Some specific version has no MBShield can also be used :"
    	echo "MBBank v6.4.24 [versionCode : 624]"
   	echo "MBBank v6.4.26 [versionCode : 626]"
    	echo "MBBank v6.4.45 [versionCode : 658]"
    else
    echo "This patch is now a part of [Bypass GW934 checksum] patch, please exit legacy patch and continue with normal patch !"
    fi
    else
    echo "APK are not unpacked ! Please unpack APK first !"
fi

	elif [ "$opt" == '[TEST] Remove v6.4.56 root detection' ]; then
    if [ -f "$DIRPATH"/mbapk/mbapk_unpacked/smali/androidx/UnderlyingVcl.smali ]
 then
    echo "Applying patch..."
    echo "Removing checksum from provider..."
    sed -i 's|e1a14adc915d7ad159edf2668b0dfcb359cf86538642de0e425d027f66eb07b2||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali
    sed -i 's|ca168a2ad00a92b8010d6801c3ca43e6df9f3701f084f6864399eaa4bbfaf56d||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali
    sed -i 's|5c9a139e42e6e6032ddbc1092af9831b8142e4e5ae89700fc7828f5bd62e1671||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali
    sed -i 's|c0a161a71738083df4298a0f03b0c54abf5bfda97c7d230875d97593733226ec||g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali
    sed -i 's|designersactivists                                                                     |weneedfreedom|g' "$DIRPATH"/mbapk/mbapk_unpacked/smali/classes/androidx/UnderlyingVcl.smali    
    echo "Removing [libtoolChecker.so]..."
    rm -f 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libtoolChecker.so'
    rm -f 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libtoolChecker.so'
    echo "Removing [libvvb2060.so]..."
    rm -f 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libvvb2060.so'
    rm -f 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libvvb2060.so'
    echo "Patching [libdesignersactivists.so]..."
    sed -i 's|com.zimperium|app.dontfixew|g' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libdesignersactivists.so'
    sed -i 's|detection|freedom..|g' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libdesignersactivists.so'
    echo "Moving from [libdesignersactivists.so] to [libweneedfreedom.so]..."
    mv 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libdesignersactivists.so' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libweneedfreedom.so'
    mv 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libdesignersactivists.so' 'mbapk/mbapk_unpacked/root/lib/armeabi-v7a/libweneedfreedom.so'
    # Fixes EKYC3002-MS6998 (DF16246.6) error on devices with randomized apps
    sed -i 's|<uses-permission android:name="android.permission.QUERY_ALL_PACKAGES"/>||g' 'mbapk/mbapk_unpacked/AndroidManifest.xml'
    # Prevent "MB detected that the device is currently not secure for peforming transactions" dialog
    echo "Creating placeholder lib"
    rm -rf temp
    mkdir temp
    cp 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libweneedfreedom.so' 'temp/'
    mv 'temp/libweneedfreedom.so' 'temp/libdesignersactivists.so'
    cp -f 'temp/libdesignersactivists.so' 'mbapk/mbapk_unpacked/root/lib/arm64-v8a/libdesignersactivists.so'
    rm -rf temp 
    mkdir temp
    cp 'mbapk/mbapk_unpacked/lib/armeabi-v7a/libweneedfreedom.so' 'temp/'
    mv 'temp/libweneedfreedom.so' 'temp/libdesignersactivists.so'
    cp -f 'temp/libdesignersactivists.so' 'mbapk/mbapk_unpacked/lib/armeabi-v7a/libdesignersactivists.so'
    rm -rf temp
    echo "This patch is applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(git show -s --format=%cd HEAD). > 'mbapk/mbapk_unpacked/assets/mbcp_info/remove_v6.4.56_root_detection.inf'
   echo "Applied [Remove v6.4.56 root detection] patch !!!"
else
   echo "[UnderlyingVcl.smali] not found!"
fi

	elif [ "$opt" == 'Exit' ]; then
        clear
	exit
	break
	fi
done


