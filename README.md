# MBCPApp Patcher for MB Bank

Lightweight **AI-free, humanity** open source tool for patching MB Bank (Android) app with Flutter framework (v6.4.0+) for rooted user. mostly written in Bash, made possible by [Cuynu](https://git.disroot.org/cuynu) and community.

- Licensed as MIT License : [View license.](https://git.disroot.org/mbcp/mbbpatch/src/branch/mbflutter/LICENSE)

## DISCLAIMER 
I'm not responsible for any illegal action if criminal abuse this patch to do illegal things, since it's originally made for technical or well-known users only and not criminal. 

## Introduction 
- This project was made to remove or limit annoying features & root detection & accessibility detection that implemented by the development team of "MB Bank" Android app with additional features such as custom themes ability,etc. **It's not PoC project**.
- It's won't meet FOSS requirements due to contains some proprietary smali code (for example: Hide VTAP patch)
- [MBCP](https://t.me/mbbpatch) are closed source before, and many people don't like it cuz worry about security & privacy issues. 
- In order to support community and also satisfy my mindset, I spend days to rewritten `MBCP` patches in Bash and open source it so you can patch yourself from original app on (Bare metal, not WSL) Linux environment
- Note : MBCP are "MBBank CorePatch" but shorter and `MBCP` or `MBCPApp` are the same thing as `MBCP`.

## Documentation

- [Documentation on self-hosted instance](http://cuynutt.ddns.net/mbcp/mbbpatch/wiki) (WIP/Incomplete)

## Requirements & Usage & How-to use patcher
- Follow documentation here : [Patcher Usage (self-hosted)](http://cuynutt.ddns.net/mbcp/mbbpatch/wiki/patcher-usage.-) 

## Patches list :

> [!IMPORTANT]
> As of MB v6.4.68+, MB's dev team are finally fight against this project by compressing `libapp.so` and even improved their tampered library & dex check from both server & app-side !
>
> This means most important patches that is patching `libapp.so` are now useless and can't be used :(
>
> Current situation : `libapp.so` can be decompressed with a [specific hook method](https://t.me/mbbpatch2_chat/99835) described by other dev, but the decompressed `libapp.so` doesn't work if you trying to put it to app.
>


### [📦 `MB Bank : com.mbmobile`](https://t.me/embeeapks)
<details>

| ⚙️ Patch | 📜 Description | 🏦 Suggested version |
|:--------:|:--------------:|:-----------------:|
| `Autopatch strings` | Modify the strings in-app within `libapp.so`, and also fixes some translation typo in-app. | v6.4.0 ~ v6.4.66 |
| `Block adjust volume on sEKYC` | Prevent the device volume from being adjusted when entering eKYC activity. | v6.4.0 ~ v6.4.72 |
| `Bypass GW934 checksum` | Bypass the GW934 error rolled-out from MB server-side which prevent MBCP users from logging in to app. Only use this after applied all your patch needs. | v6.4.64 ~ v6.4.66 |
| `Change app logo` | Change the app logo with set of icons. | v6.4.0 ~ v6.4.72 |
| `Change widget background to dark ` | Change widget background to dark if you use MBBHomeWidget. | v6.4.0 ~ v6.4.72 |
| `Disable MB Membership` | Disable the MB Membership badge below pfp and all of it's features. | v6.4.0 ~ v6.4.66 |
| `Force portrait screen` | Force the screen always portrait on app, espcially when launching. | v6.4.0 ~ v6.4.72 |
| `Remove MB AI Bullsh*t resources` | Remove the bullsh*t MB AI resources from app. Need to implement more in the future. | v6.4.74 |
| `Remove invoke to mbshield` | Make app don't invoke to mbshield when opening (MainActivity) and (MBBHomeWidgetQR) only | v6.4.22 ~ v6.4.71 |
| `Remove MB Themes Store` | Remove the MB Themes Store banner from Themes list, preventing access to MB Theme Store. | v6.4.28 ~ v6.4.72 |
| `Remove new zimperium check` | Remove the new Zimperium (ZDefend) root detection from app. Picked up from Legacy Patch. | v6.4.60 ~ v6.4.72 | 
| `Remove bulit-in fonts` | Remove app font and force to use device font for most app components. | v6.4.0 ~ v6.4.72 |
| `Remove custom profile picture` | Force the use of default profile picture instead of your current one on MB's server side. | v6.4.0 ~ v6.4.66 |
| `Modify app theme` | Modify the app theme in app from original one to others. Currently have MBClassic and SemiPriority. | v6.4.30 ~ v6.4.72 |
| `Restore old 682 lib` | Restore old v6.4.61 `libapp.so` to prevent enforced `quockhanh` theme changes on v6.4.62. | v6.4.62 |
| `Remove garbage permission and activities` | Removes tracking permission & activities from app. | v6.4.0 ~ v6.4.72 |
| `Remove eMBee` | Removes eMBee options in app, alongside with Customer support. | v6.4.43 ~ v6.4.66 |
| `Revert old eMBee logo` | Revert old eMBee logo, specially on product consultation options. | v6.4.53 ~ v6.4.72 |
| `Remove useless libraries` | Remove the useless libraries from app, only for v6.4.67+ | v6.4.67 ~ v6.4.72 |
| `Remove animated QR background` | Remove the animated QR background on bottom navigation bar and replace with white background. | v6.4.43 ~ v6.4.72 | 
| `Remove banner & MiniApp` | Removes the banner and MiniApp on `homeLanding` page when logged in. | v6.4.43 ~ v6.4.66 |
| `Remove VPN detection` | Remove the VPN detection that warn users to turn it off on app bundle. | v6.4.52 ~ v6.4.66 |
| `Remove VNPAY VMB20` | Remove the VNPAY Airplane related activities. | v6.4.55 ~ v6.4.72 | 
| `Restore old registration resources` | Restore old resources on `onboarding` page. | v6.4.48 ~ v6.4.72 |
| `Spoof app version to v6.4.68` | Spoof the app version from v6.4.66 to v6.4.68. | v6.4.64 ~ v6.4.66 |
| `Bypass accessibility & malicious apps check` | Remove the restriction of using the app when an app using accessibility service or "malicious apps" like (HideMyAppList) installed. | v6.4.25 ~ v6.4.54 |
| `Hide VTAP root detection activity & dialog` | Hide the old root detection screen and dialog showing "Device is rooted" (might have issues on some HyperOS ROMs). | v6.4.0 ~ v6.4.72 |
| `Legacy hide VTAP activity & dialog` | Hide the first root detection screen with dialog showing "Device is rooted" but not bypassing it. (GW908 will present, unlike standard `Hide VTAP root detection activity & dialog` patch). Only use for some ugly ROMs which crashing with standard patch. | v6.4.53 ~ v6.4.72 |
| `Remove new root detection` | Remove the new Zimperium (ZDefend) root detection from app. (Now requires workaround for v6.4.56+) | v6.4.15 ~ v6.4.58 |
| `Bypass new zimperium detection` | Bypass the root check from Zimperium within app. | v6.4.56 ~ v6.4.63 |
| `Remove protection shield` | Remove the MIC protection shield on profile picture and login screen. (not app protection) | v6.4.0 ~ v6.4.72 |
| `Remove app from launcher` | Remove the app icon from launcher, and start with `am start` or with MBZDefend-Fix Action/Termux. | v6.4.0 ~ v6.4.72 |
| `Set targetSdkVersion to 34` | Set the `targetSdkVersion` to 34 (Android 14). | v6.4.10 ~ v6.4.72 |
| `Add modified resources` | Adds the specific strings for MBCP on eKYC phase, and modify the DigiBank logo. | v6.4.0 ~ v6.4.72 |
| `Add anime resources` | Adds anime-related resources to some components inside app. | v6.4.45 ~ v6.4.72 |


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

## Proprietary code
- This project probably won't meet FOSS requirements due to contains proprietary code extracted from MB app that has been modified to bypass something else.
That applies for following folder :
- 1. `blob_patches/bypass_apptampering`
- 2. `blob_patches/noadjust_volume_sekyc`
- 3. `blob_patches/skip_maintainscreen`
- 4. `blob_patches/bypass_accessibility_applist`
- 5. `blob_patches/bypass_rootold`
- 6. `blob_patches/fix_df16211`
- Under `mbsig` directory, its contain MB original dumped signature, which is necessary to make app works after patching process.
- Everything including that listed above code are all licensed under MIT license, it's can be considered as reverse engineered code :>

## Usage
- Go to home directory, then clone repository first
```
cd ~
git clone https://git.disroot.org/mbcp/mbbpatch.git
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
- Use `Patch App` function and select the patches you want to apply to unpacked app except [Bypss GW934 checksum] patch
- When done, apply the [Bypass GW934 checksum] patch, then use `Repack APK` function to recompile patched app
- Patched app will be `MBCP_Flutter_SelfPatched.apk` on `~/mbbpatch/MBCPApp/mbcpapp_apk/`
- Install it to your device (requires [MBCP Helper](https://git.disroot.org/mbcp/mbcp-helper/releases) / [CorePatch](https://github.com/lsposed/corepatch/releases) ) with enabled "Disable digest verify" option.
- Profit :)

## TODO

- [ ] Bypass the new dex & libraries checksum for MB v6.4.67+

- [x] Adapt new v6.4.67 zimperium structure

- [x] Adapt new v6.4.68 trungthu theme

## Contributing
- PRs are welcome, but you are NOT allowed to use any AI-tools for creating PRs to this project, even if it's manually reviewed by human. please use your brain and search engine & read documentation (without AI things) !
- If you wish to use AI-tools, please go ahead and find for another project instead. 

## Credits
- [apktool](https://github.com/iBotPeaches/Apktool)
- [APKEditor](https://github.com/REAndroid/APKEditor/)
- [MT Manager](https://mt2.cn/) to handle APK signature scheme v2/v3 (in the past)
- [Zhaxia CN](https://t.me/zhaxia_cn) for sticker packs (Add anime resources)
- [FlatIcon](https://flaticon.com) for some icons

## Contributors
- [Cuynu](https://git.disroot.org/cuynu) - MBCP project author/maintainer
- [fukiame](https://git.disroot.org/fukiame) - refactor & other improvements
- [Ngankbakaa](https://github.com/miyukocutee) - contributor
