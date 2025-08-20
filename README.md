# MBCPApp Patcher for MB Bank

<img src="https://git.disroot.org/mbcp/mbbpatch/raw/branch/mbflutter/MBCPApp/mbcpicons/thongnhatVN/mipmap-hdpi/ic_launcher_round.png" style="width: 72px;" alt="2025_logo">

Lightweight "open source" tool for patching MB Bank Flutter (Android) app for rooted user, mostly written in Bash, made possible by [Cuynu](https://git.disroot.org/cuynu).

- Licensed as MIT License : [View license.](https://git.disroot.org/mbcp/mbbpatch/src/branch/mbflutter/LICENSE)

# DISCLAIMER 
We are not responsible for any illegal action if criminal abuse this patch to do illegal things, since it's originally made for technical users only and not criminal. 

## Introduction 
- This project was made to remove or limit annoying features & root detection & accessibility detection that implemented by the development team of "MB Bank" Android app with additional features such as custom themes ability,etc. It's not PoC project.
- [MBCP](https://t.me/mbbpatch) are closed source before, and many people don't like it cuz worry about security & privacy issues. 
- In order to support community, we spend days to rewritten `MBCP` patches once again in Bash and open sourced it so you can patch yourself from original app on (Bare metal, not WSL) Linux environment
- Note : MBCP are "MBBank CorePatch" but shorter and `MBCP` or `MBCPApp` are the same thing as `MBCP`.

## Patches list :
### [📦 `MB Bank : com.mbmobile`](https://t.me/embeeapks)
<details>

| ⚙️ Patch | 📜 Description | 🏦 Suggested version |
|:--------:|:--------------:|:-----------------:|
| `Autopatch strings` | Modify the strings in-app within `libapp.so`, and also fixes some translation typo in-app. | v6.4.0 ~ v6.4.63 |
| `Block adjust volume on sEKYC` | Prevent the device volume from being adjusted when entering eKYC activity. | v6.4.0 ~ v6.4.63 |
| `Change app logo` | Change the app logo with set of icons. | v6.4.0 ~ v6.4.63 |
| `Change widget background to dark ` | Change widget background to dark if you use MBBHomeWidget. | v6.4.0 ~ v6.4.63 |
| `Force portrait screen` | Force the screen always portrait on app, espcially when launching. | v6.4.0 ~ v6.4.63 |
| `Remove invoke to mbshield` | Make app don't invoke to mbshield when opening (MainActivity) and (MBBHomeWidgetQR) only | v6.4.22 ~ v6.4.63 |
| `Remove bulit-in fonts` | Remove app font and force to use device font for most app components. | v6.4.0 ~ v6.4.63 |
| `Modify app theme` | Modify the app theme in app from original one to others. Currently have MBClassic and SemiPriority. | v6.4.30 ~ v6.4.63 |
| `Restore old 682 lib` | Restore old v6.4.61 `libapp.so` to prevent enforced `quockhanh` theme changes on v6.4.62. | v6.4.62 |
| `Remove garbage permission and activities` | Removes tracking permission & activities from app. | v6.4.0 ~ v6.4.63 |
| `Remove eMBee` | Removes eMBee options in app, alongside with Customer support. | v6.4.43 ~ v6.4.63 |
| `Revert old eMBee logo` | Revert old eMBee logo, specially on product consultation options. | v6.4.53 ~ v6.4.63 |
| `Remove animated QR background` | Remove the animated QR background on bottom navigation bar and replace with white background. | v6.4.43 ~ v6.4.63 | 
| `Remove banner & MiniApp` | Removes the banner and MiniApp on `homeLanding` page when logged in. | v6.4.43 ~ v6.4.63 |
| `Remove VPN detection` | Remove the VPN detection that warn users to turn it off on app bundle. | v6.4.52 ~ v6.4.63 |
| `Remove VNPAY VMB20` | Remove the VNPAY Airplane related activities. | v6.4.55 ~ v6.4.63 | 
| `Restore old registration resources` | Restore old resources on `onboarding` page. | v6.4.48 ~ v6.4.63 |
| `Bypass accessibility & malicious apps check` | Remove the restriction of using the app when an app using accessibility service or "malicious apps" like (HideMyAppList) installed. | v6.4.25 ~ v6.4.54 |
| `Hide VTAP root detection activity & dialog` | Hide the old root detection screen and dialog showing "Device is rooted" (might have issues on some HyperOS ROMs). | v6.4.0 ~ v6.4.63 |
| `Remove new root detection` | Remove the new Zimperium (ZDefend) root detection from app. (Now requires workaround for v6.4.56+) | v6.4.15 ~ v6.4.58 |
| `Bypass new zimperium detection` | Bypass the root check from Zimperium within app. | v6.4.56 ~ v6.4.63 |
| `Remove protection shield` | Remove the MIC protection shield on profile picture and login screen. (not app protection) | v6.4.0 ~ v6.4.63 |
| `Remove app from launcher` | Remove the app icon from launcher, and start with `am start` or with MBZDefend-Fix Action/Termux. | v6.4.0 ~ v6.4.63 |
| `Set targetSdkVersion to 35` | Set the `targetSdkVersion` to 35 (Android 15). | v6.4.10 ~ v6.4.63 |
| `Add modified resources` | Adds the specific strings for MBCP on eKYC phase, and modify the DigiBank logo. | v6.4.0 ~ v6.4.63 |
| `Add anime resources` | Adds anime-related resources to some components inside app. | v6.4.45 ~ v6.4.63 |


</details>

## Legacy patches
- Those patches are not implemented or outdated, which is used for discontinued MB app version.
### [📦 `MB Bank : com.mbmobile`](https://t.me/embeeapks)
<details>

| ⚙️ Patch | 📜 Description | 🏦 Suggested version |
|:--------:|:--------------:|:-----------------:|
| `Bypass signature check` | Not implemented | v6.4.0 ~ v6.4.21 |
| `[TEST] Remove v6.4.56 root detection` | New workaround that removes new Zimperium (ZDefend) root detection from app. | v6.4.56 |
| `Bypass 1200 error` | Workaround for 1200 error that happening on original MB app with specific version, now discontinued. | v6.4.45 |
</details>

## Requirements
- Actual Linux environment (not on virtualized environment like WSL) and any compatible distro (Arch Linux based recommended)
- Little knowledge about `bash` commands
- `android-tools` for Arch/Fedora based and `android-sdk-platform-tools` for Debian based 
- For macOS, you need `openjdk` `gnu-sed` `wget` `android-platform-tools` installed with brew (both need to be added to PATH first!) 
- `git` installed
- `java` or `jdk-openjdk` installed


## Usage
- Go to home directory, then clone repository first
```
cd ~
git clone https://git.disroot.org/cuynu/mbbpatch.git
cd ~/mbbpatch/MBCPApp
```

- Since MB Bank are now using split APK (*.apks) since `v5.3 (135)` so you have to convert it to regular APK first
- Grab MB Bank apks from [eMBee APKs](https://t.me/embeeapks) or [Lotus Chat](https://lotuschat.vn/w/+anSH1BbDbAYn54JC9nIC9A) if you don't have access to Telegram and copy it to `~/mbbpatch/MBCPApp/mbapk` 

- Run bash `mbcpapp.sh` script
```
cd ~/mbbpatch/MBCPApp
./mbcpapp.sh
```
- Download necessary tools first with `Download tools` function (otherwise other functions are unlikely to work!) 
- Convert apks to apk first using `Convert apks to apk` function
- Unpack apk with `Unpack apk` function
- Use `Patch App` function and select the patches you want to apply to unpacked app
- When done, use `Repack APK` function to recompile patched app
- Patched app will be `MBCP_Flutter_SelfPatched.apk` on `~/mbbpatch/MBCPApp/mbcpapp_apk/`
- Install it to your device (requires [MBCP Helper](https://git.disroot.org/mbcp/mbcp-helper/releases) / [CorePatch](https://github.com/lsposed/corepatch/releases) ) with enabled "Disable digest verify" option.
- Profit :)

## TODO

## External projects 
MBCPApp Patcher project won't be possible without those external projects !!
- [apktool](https://github.com/iBotPeaches/Apktool)
- [APKEditor](https://github.com/REAndroid/APKEditor/)
- [MT Manager](https://mt2.cn/) to handle APK signature scheme v2/v3 (in the past)
- [Zhaxia CN](https://t.me/zhaxia_cn) for sticker packs (Add anime resources)

## Contributors
- [Cuynu](https://git.disroot.org/cuynu) - MBCP project author/maintainer
- [fukiame](https://git.disroot.org/fukiame) - other improvements to project


