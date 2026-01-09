# MBCPApp Patcher for MB Bank (Android)

Lightweight **AI-free, human-written** open source tool for patching MB Bank (Android) app with Flutter framework (v6.4.0+) for rooted users (or ROMs with bulit-in CorePatch). primarily written in Bash, made possible by @cuynu and community in Vietnam.

<img alt="Gitea Release" src="https://img.shields.io/gitea/v/release/mbcp/mbbpatch?gitea_url=http%3A%2F%2Fcuynutt.ddns.net&include_prereleases&display_name=tag&style=for-the-badge&logo=android&label=Latest%20Pre-bulit%20MBCP%20&color=%23CC6699&link=http%3A%2F%2Fcuynutt.ddns.net%2Fmbcp%2Fmbbpatch%2Freleases">

<img alt="Gitea Issues" src="https://img.shields.io/gitea/issues/all/mbcp/mbbpatch?gitea_url=http%3A%2F%2Fcuynutt.ddns.net&style=for-the-badge">

<img alt="Gitea language count" src="https://img.shields.io/gitea/languages/count/mbcp/mbbpatch?gitea_url=http%3A%2F%2Fcuynutt.ddns.net&style=for-the-badge&color=%236750A4">

- If you are looking pre-bulit app, here : [MBCP Releases](/mbcp/mbbpatch/releases) | [Install guide](/mbcp/info_en/wiki/mbcpinstall)
- Project FAQ : [Read here](/mbcp/info_en/wiki/faq)
- Licensed as MIT License.

## Introduction
- Note : "MBCP" / "MBCPApp" = "MBBank CorePatch"
- This project was made to remove or limit annoying features & root detection & accessibility detection that is implemented by the development team of "MB Bank" Android app with additional features such as custom themes ability, device font, etc (see more in patches list). **It's not PoC (Proof of Concept) project at all.**
- [MBCP](https://t.me/mbcposs) are closed source before, and many people don't like it and concern with privacy & security issues
- In order to support community and allow other devs to improve the project, I spend days to rewritten `MBCP` patches in Bash and open source it so you can patch yourself from original app on Linux or Darwin (macOS) environment. All MBCP pre-bulit releases from v6.4.47+ are all bulit with this open source project with the commit ID at the end of the file name.

## DISCLAIMER 
I'm not responsible for any illegal action if someone abuse this patch to do illegal things, since it's originally made for technical or well-known users only.

## Documentation

- [MBCPApp Pathcer Documentation](/mbcp/mbbpatch/wiki)

## Requirements & Usage & How-to use patcher
- Follow usage docs here : [Patcher Usage](/mbcp/mbbpatch/wiki/patcher-usage.-)

## Patches list :

> [!IMPORTANT]
> These patches can be applied for current/newer app version, but the app will refuse to login with `GW934` error :
> - Remove invoke to mbshield
> 
> - Block adjust volume on sEKYC
> 
> - Remove new zimperium check
>
> - Hide VTAP root detection activity & dialog
>
> It used to works with v6.4.62 and lower (v6.4.63 up to v6.4.66 with workaround).
>
> Dex and libraries checksum when logging in seems to be added since v6.4.63+, and is likely implemented from the library side.
>
> At the current situation, the workaround for it is still unknown :(
>
> Except for testing, those mentioned patches shouldn't be used for any normal use cases. So for now, avoid it when patching app. 
> 

### [📦 `MB Bank : com.mbmobile`](https://t.me/embeeapks)
<details>

| ⚙️ Patch | 📜 Description | 🏦 Suggested version |
|:--------:|:--------------:|:-----------------:|
| `Add verified badge` | Replaces the MIC protection shield with verified badge to make it looks more cute :3 | v6.4.0 ~ v6.4.82 |
| `Adaptive launcher icon` | Adds the adaptive & themed icon support to the app. Thanks to @fukiame ! | v6.4.0 ~ v6.4.82 |
| `Proper notification icon` | Temporary fixes for the app notification icon. Thanks to @fukiame ! | v6.4.0 ~ v6.4.82 |
| `Block adjust volume on sEKYC` | Prevent the device volume from being adjusted when entering eKYC activity. | v6.4.0 ~ v6.4.82 |
| `Change app logo` | Change the app logo with set of icons. | v6.4.0 ~ v6.4.82 |
| `Change widget background to dark ` | Change widget background to dark if you use MBBHomeWidget. | v6.4.0 ~ v6.4.82 |
| `Force portrait screen` | Force the screen always portrait on app, espcially when launching. | v6.4.0 ~ v6.4.82 |
| `Remove MB AI Bullsh*t resources` | Remove the bullsh*t MB AI resources from app. Need to implement more in the future. | v6.4.74 ~ v6.4.82 |
| `Remove MB Themes Store` | Remove the MB Themes Store banner from Themes list, preventing access to MB Theme Store. | v6.4.28 ~ v6.4.82 |
| `Remove invoke to mbshield` | Make app don't invoke to mbshield when opening (MainActivity) and (MBBHomeWidgetQR) only | v6.4.22 ~ v6.4.82 |
| `Remove new zimperium check` | Remove the new Zimperium (ZDefend) root detection from app. Picked up from Legacy Patch. | v6.4.60 ~ v6.4.82 | 
| `Remove bulit-in fonts` | Remove app font and force to use device font for most app components. | v6.4.0 ~ v6.4.82 |
| `Modify app theme` | Modify the app theme in app from original one to others. Currently have MBClassic and SemiPriority. | v6.4.30 ~ v6.4.82 |
| `Remove garbage permission and activities` | Removes tracking permission & activities from app. | v6.4.0 ~ v6.4.82 |
| `Revert old eMBee logo` | Revert old eMBee logo, specially on product consultation options. | v6.4.53 ~ v6.4.82 |
| `Remove useless libraries` | Remove the useless libraries from app, only for v6.4.67+ | v6.4.67 ~ v6.4.82 |
| `Remove animated QR background` | Remove the animated QR background on bottom navigation bar and replace with white background. | v6.4.43 ~ v6.4.82 |
| `Remove VNPAY VMB20` | Remove the VNPAY Airplane related activities. | v6.4.55 ~ v6.4.82 |
| `Restore old registration resources` | Restore old resources on `onboarding` page. | v6.4.48 ~ v6.4.82 |
| `Hide VTAP root detection activity & dialog` | Hide the old root detection screen and dialog showing "Device is rooted" (might have issues on some HyperOS ROMs). | v6.4.0 ~ v6.4.82 |
| `Legacy hide VTAP activity & dialog` | Hide the first root detection screen with dialog showing "Device is rooted" but not bypassing it. (GW908 will present, unlike standard `Hide VTAP root detection activity & dialog` patch). Only use for some ugly ROMs which crashing with standard patch. | v6.4.53 ~ v6.4.82 |
| `Remove protection shield` | Remove the MIC protection shield on profile picture and login screen. (not app protection) | v6.4.0 ~ v6.4.82 |
| `Remove app from launcher` | Remove the app icon from launcher, and start with `am start` or with MBZDefend-Fix Action/Termux. | v6.4.0 ~ v6.4.82 |
| `Set targetSdkVersion to 34` | Set the `targetSdkVersion` to 34 (Android 14) to prevent UI issues on some activities. | v6.4.10 ~ v6.4.82 |
| `Add modified resources` | Adds the specific strings for MBCP on eKYC phase, and modify the DigiBank logo. | v6.4.0 ~ v6.4.82 |
| `Add anime resources` | Adds anime-related resources to some components inside app. | v6.4.45 ~ v6.4.82 |


</details>

## Old patches

> [!IMPORTANT]
> These patches are no longer compatible with newer/current app version. It can't be fixed unless MB decompress the `libapp.so` (which will never happen) or until I find the method to decompress it manually.

### [📦 `MB Bank : com.mbmobile`](https://t.me/embeeapks)
<details>

| ⚙️ Patch | 📜 Description | 🏦 Suggested version |
|:--------:|:--------------:|:-----------------:|
| `Autopatch strings` | Modify the strings in-app within `libapp.so`, and also fixes some translation typo in-app. | v6.4.0 ~ v6.4.66 |
| `Bypass GW934 checksum` | Bypass the GW934 error rolled-out from MB server-side which prevent MBCP users from logging in to app. Only use this after applied all your patch needs. | v6.4.64 ~ v6.4.66 |
| `Disable MB Membership` | Disable the MB Membership badge below pfp and all of it's features. | v6.4.0 ~ v6.4.66 |
| `Remove custom profile picture` | Force the use of default profile picture instead of your current one on MB's server side. | v6.4.0 ~ v6.4.66 |
| `Restore old 682 lib` | Restore old v6.4.61 `libapp.so` to prevent enforced `quockhanh` theme changes on v6.4.62. | v6.4.62 |
| `Remove eMBee` | Removes eMBee options in app, alongside with Customer support. | v6.4.43 ~ v6.4.66 |
| `Remove banner & MiniApp` | Removes the banner and MiniApp on `homeLanding` page when logged in. | v6.4.43 ~ v6.4.66 |
| `Remove VPN detection` | Remove the VPN detection that warn users to turn it off on app bundle. | v6.4.52 ~ v6.4.66 |
| `Spoof app version to v6.4.68` | Spoof the app version from v6.4.66 to v6.4.68. | v6.4.64 ~ v6.4.66 |
| `Bypass accessibility & malicious apps check` | Remove the restriction of using the app when an app using accessibility service or "malicious apps" like (HideMyAppList) installed. | v6.4.25 ~ v6.4.54 |
| `Remove new root detection` | Remove the new Zimperium (ZDefend) root detection from app. (Now requires workaround for v6.4.56+) | v6.4.15 ~ v6.4.58 |
| `Bypass new zimperium detection` | Bypass the root check from Zimperium within app. | v6.4.56 ~ v6.4.63 |
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
> [!WARNING]
> This project contains some proprietary code extracted from MB's app that has been modified to bypass something in the app, but the modified proprietary code is completely public and open source, it will be used for some patches.
>
> Proprietary code exists in following folder :

- 1. `blob_patches/bypass_apptampering`
- 2. `blob_patches/noadjust_volume_sekyc`
- 3. `blob_patches/skip_maintainscreen`
- 4. `blob_patches/bypass_accessibility_applist`
- 5. `blob_patches/bypass_rootold`
- 6. `blob_patches/fix_df16211`
- 7. `blob_patches/noinvoke`

- Under `mbsig` directory, it contains original signature from original MB's app, which is necessary to make app works after patching process because the app doesn't work with different APK signature.
- Everything including that listed above code are all licensed under MIT license, it can be considered as reverse engineered code :>

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

- [ ] Bypass the new dex & libraries checksum for MB v6.4.67+ (hardcore challenge)

- [ ] Proper display language under Singalarity eKYC phase 

- [x] Revert old Bee Rich logo

- [x] Adapt new v6.4.67 zimperium structure

- [x] Adapt new v6.4.68 trungthu theme

## Contribute to project
- PRs are welcome, but you are NOT allowed to use any AI-tools for creating PRs with AI-generated/AI-assisted code to this project, even if it's manually reviewed by human. please use your brain and search engine & read documentation for that !
<details>

- Even though this project is NOT AI-powered or assisted, another dependencies that the project heavily rely on (APKEditor, coreutils, etc) may have been filled up with AI-generated code or assisted by AI. While I'm straightly disagree it, theres no escape for that in big 2025 (and also in few next years) so we have to live with that AI-generated & AI-assisted code inside the dependencies, but that doesn't mean I will code or allows AI-generated & AI-assisted code in this project at all. 

- Remember : Projects that rely on dependencies that is already filled up with AI-generated & AI-assisted code or bulit on top of it but written by human and NOT AI doesn't means the project is AI-powered or AI-generated project. 

- If you wish to use AI-tools for contributing, please go ahead and find for another project instead. 

</details>

## Project history
<details>

- 05/2023 : MB Bank MOD APK ANDROID project created on Telegram (@mbbmod), providing modified MB Bank APKs since v5.8 with lots of features such as bypassing accessibility check and show a guide to hide root instead of show rooted screen then close the app.

- 01/2024 : Channel from 2023 is deleted, due to Telegram banning account (@cuynutt)

- 06/2024 : [MB Android Patched] channel created, providing modified MB Bank Flutter APKs and then MB React Native APKs

- 01/2025 : Channel renamed to [MBCP Android] due to MB discontinued version that does not requires CorePatch. MBCP Helper also existed since then.

- 05/2025 : Project is rewritten from closed source (mostly with MT Manager) to open source with `bash` programming language, reduce the trust issues with closed source app before, also allow anyone to patch it manually.

- 06/2025 : [Hide VTAP root detection activity & dialog] patch was added, enables the ability to use the MBCP app with superuser (root permission) enabled.

- 08/2025 : @fukiame joining to refactor the project source code, make it easier to maintain in the future, also implement good logic.

- 10/2025 : MB discontinued `v6.4.66`, the last version with almost all patches working (except `bypass_accessibility_applist`) with `GW525` error when logging in

- 11/2025 : After multiple times lying myself and always said that I'm not a developer, **I embraced and claim myself as a MBCP developer** and still having skill issues, but atleast, I made this project, and solved the issues that MB's development team created to the MB Bank app by writing code to bypass them.

- 11/2025 (2) : MB released `v6.4.74` with AI-crap button that replaces legacy search button. I created a patch that force replace it back to old search icon. 

- ...
</details>


## Credits
- [apktool](https://github.com/iBotPeaches/Apktool)
- [APKEditor](https://github.com/REAndroid/APKEditor/)
- [MT Manager](https://mt2.cn/) to handle APK signature scheme v2/v3 (in the past)
- [Zhaxia CN](https://t.me/zhaxia_cn) for sticker packs (Add anime resources)
- [FlatIcon](https://flaticon.com) for some icons, including search icon, verified badge

## Contributors
- [Cuynu](/cuynu) - MBCP project author/dev/maintainer
- [fukiame](/fukiame) - refactor & other improvements
- [Ngankbakaa](https://github.com/miyukocutee) - contributor

