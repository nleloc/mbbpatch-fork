#!/bin/bash

# Fun fact is this project made with
# A tinkerer, not developer xD
# You might see this line but ignore it then continues calling me a developer, but after all, i just a loser :D

echo "Legacy patches list for MBCPApp :"
PS3='Select patch options :'
select opt in 'Bypass 1200 error [v6.4.45]' 'Bypass signature check' 'Exit'
do
if [ "$opt" == 'Bypass 1200 error [v6.4.45]' ]; then
		echo "Notice : v6.4.45 are now got [GW525 - Force update !] !!!"
		echo "This patch will remain available but you cannot bypass GW525 error !"
		mkdir bypass1200
		echo "Downloading v6.4.47 apks..."
     		wget https://github.com/ghclonenah1/mbbpatch_release/releases/download/a/embee_v6.4.47_arm64-v8a_armeabi-v7a.apks -q --show-progress
		mv *.apks bypass1200/
     		echo "Unpacking..."
     		java -jar tools/APKEditor-1.4.2.jar m -i bypass1200/*.apks
     		java -jar tools/apktool_2.11.1.jar d bypass1200/*.apk -o bypass1200/unpacked
     		mv bypass1200/unpacked/lib/arm64-v8a/libapp.so mbapk/mbapk_unpacked/lib/arm64-v8a/ 
     		mv bypass1200/unpacked/lib/armeabi-v7a/libapp.so mbapk/mbapk_unpacked/lib/armeabi-v7a/ 
     		mv bypass1200/unpacked/lib/arm64-v8a/libflutter.so mbapk/mbapk_unpacked/lib/arm64-v8a/ 
     		mv bypass1200/unpacked/lib/armeabi-v7a/libflutter.so mbapk/mbapk_unpacked/lib/armeabi-v7a/   
     		echo "Cleaning..."   
     		rm -rf bypass1200
     		## MB Forced update to 658, it must be spoofed!
     		echo "Patching [apktool.yml]..."
     		sed -i 's|658|700|g' ~/mbbpatch/MBCPApp/mbapk/mbapk_unpacked/apktool.yml
     		echo "This patch are applied by MBCPApp Patcher on $(uname -s -r) with commit :" $(git rev-parse --short HEAD) at $(date). > 'mbapk/mbapk_unpacked/assets/mbcp_info/bypass_1200_error.inf'


		# Placeholder  patch, not yet implemented 
    	elif [ "$opt" == 'Bypass signature check' ]; then
    		echo "Applying patch [Bypass signature check]..."
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


	elif [ "$opt" == 'Exit' ]; then
        clear
        ./mbcpapp.sh
        exit
		break
	fi
done


