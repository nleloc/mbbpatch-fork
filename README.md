# MBCPApp Patcher for MB Bank
Lightweight "open source" tool for patching MB Bank Flutter (Android) app, mostly written in Bash script, mainly made by [Cuynu](https://gitlab.com/cuynu) and no one else (MBCPApp Author) is fake :)

# Notice FOR MB Bank developers / securities 
- WE did NOT made this project just for you to report this to MB Bank development team and fix those patches. This is COMMUNITY PROJECT which patches MB Bank app to remove annoying limitation you've implemented to MB Bank app !

Lightweight "open source" tool for patching MB Bank Flutter (Android) app, mostly written in Bash script, mainly made by [Cuynu](https://gitlab.com/cuynu) and no one else (MBCPApp Author) is fake :)

<img alt="https://gitlab.com/cuynu/mbbpatch" src="https://gitlab.com/cuynu/archive/-/raw/main/mbcpapp_patcher.png?inline=false" width="" height="" />
</a>

- Licensed as MIT License : [View license.](https://gitlab.com/cuynu/mbbpatch/-/blob/mbflutter/LICENSE)

## Introduction 
- [MBCP (MBBank CorePatch)](https://t.me/mbbpatch) are closed source before, and many people don't like it because worry about security & privacy issues. 
- In order to support community and make MBCP open source, We spend days to rewritten whole `MBCPApp` patches in Bash and open it so you can patch it yourself on (Bare metal, not WSL) Linux environment (where we used to patch `MBCP`) 

## Requirements
- Actual Linux environment (not on virtualized environment like WSL) and any compatible distro (Arch Linux based recommended)
- Little knowledge about `bash` commands 
- `git` installed
- `java` or `jdk-openjdk` installed

## Usage
- Go to home directory, then clone repository first
```
cd ~
git clone https://gitlab.com/cuynu/mbbpatch.git
cd ~/mbbpatch/MBCPApp
```

- Since MB Bank are now using split APK (*.apks) since `v5.3 (135)` so you have to convert it to regular APK first
- Grab MB Bank apks from [eMBee APKs](https://t.me/embeeapks) and copy it to `~/mbbpatch/MBCPApp/mbapk`

- Run bash `mbcpapp.sh` script
```
cd ~/mbbpatch/MBCPApp
./mbcpapp.sh
```
- Download necessary tools first with `Download tools` function (otherwise other function with unlikely to work!)
- Convert apks to apk first using `Convert apks to apk` function
- Unpack apk with `Unpack apk` function
- Check if MBShield present on unpacked APK with `Check MBShield` function 
(if MBShield present then you have to extract assets from Android device with `Extract assets [ROOT]`)
- After extracted assets (if MBShield present), use `Patch App` function and select the patches you want to apply to unpacked app
- When done, use `Repack APK` function to recompile apk (You must have Android device connected with debugging mode enabled!)
- Output will be `MBCP_Flutter.zip` on `~/mbbpatch/MBCPApp/mbcpapp_apk/` and `mbsig.apk` will be copied to Android internal storage
- Use [MT Manager](https://mt2.cn/), put all files inside `MBCP_Flutter.zip` to `mbsig.apk` and untick `AUTO SIGN`
- Install it to your device (requires [MBCP Helper](https://gitlab.com/cuynu/mbcp-helper/-/releases) / [CorePatch](https://github.com/lsposed/corepatch/releases) ) due to unsigned APK
- Profit :)

## TODO
- fully implement `Bypass signature check` function

## External projects 
MBCPApp Patcher project won't be possible without those external projects !!
- [apktool](https://github.com/iBotPeaches/Apktool)
- [APKEditor](https://github.com/REAndroid/APKEditor/)
- [MT Manager](https://mt2.cn/) to handle APK signature scheme v2/v3



