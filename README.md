# MBCPApp Patcher for MB Bank (Android)

**AI-free, human-written** open source tool for patching MB Bank (Android) app with Flutter framework (v6.4.0+) for rooted users (or ROMs with built-in CorePatch). primarily written in Bash, made possible by @cuynu and community in Vietnam.

<img alt="Gitea Release" src="https://img.shields.io/gitea/v/release/mbcp/mbbpatch?gitea_url=https%3A%2F%2Fgit.disroot.org&include_prereleases&display_name=tag&style=for-the-badge&logo=android&label=Latest%20Pre-built%20MBCP%20&color=%23CC6699">

<img alt="Gitea Issues" src="https://img.shields.io/gitea/issues/all/mbcp/mbbpatch?gitea_url=https%3A%2F%2Fgit.disroot.org&style=for-the-badge">

<img alt="Gitea language count" src="https://img.shields.io/gitea/languages/count/mbcp/mbbpatch?gitea_url=https%3A%2F%2Fgit.disroot.org&style=for-the-badge&color=%236750A4">

- If you are looking pre-built app, here : [MBCP Releases](/mbcp/mbbpatch/releases) | [Install guide](/mbcp/info_en/wiki/mbcpinstall)
- Coming from GitLab? Go to the main location here to avoid link errors : [Disroot](https://git.disroot.org/mbcp/mbbpatch) | [Selfhost](http://cuynutt.ddns.net/mbcp/mbbpatch)
- Project FAQ : [Read here](/mbcp/info_en/wiki/faq)
- Licensed as MIT License.

> [!IMPORTANT]
> As of new State of Bank regulations, this project now targets with the aim to gain back freedom for power users and developers who wanted to use rooted device as main device but wanted to use the app normally. 
> 
>
> We spend efforts and times for finding the method and make this project. Of course, it's not for scammer, it's for **power users and developers only**.
>
> Older releases (v6.4.90 or older) has mismatch commit ID with this new repo, for reference to the exactly same commit, see [MBCP_VersionReference.md](MBCP_VersionReference.md) in repository.

## Introduction
- Note : "MBCP" / "MBCPApp" = "MBBank CorePatch"
- MBCP is inspired from [CorePatch](https://github.com/LSPosed/CorePatch) project. Now it can works with [PMPatch](https://github.com/vova7878-modules/PMPatch) too
- This project was made to remove or limit annoying features & root detection & accessibility detection that is implemented by the development team of "MB Bank" Android app with additional features such as custom themes ability, device font, etc (see more in patches list). **It's not PoC (Proof of Concept) project at all.**
- [MBCP](https://t.me/mbcposs) are closed source before, and many people don't like it and concern with privacy & security issues
- In order to support community and allow other devs to improve the project, I spend days to rewritten `MBCP` patches in Bash and open source it so you can patch yourself from original app on Linux or Darwin (macOS) environment. All MBCP releases from v6.4.47+ are all built with this open source project with the commit ID at the end of the file name.

## Current situation

- More information about GW934 measure :
<details>

- The `GW934` error is known enabled from the server-side (v6.4.64 works since days 0, but return with GW934 error after 11 days), it requires client (MBCP/MBBank) app to sent the SHA256 hash of 3 app libraries `libapp.so` | `libmbshield.so` | `libclosestmadagascar.so` and all of 5 dex files (classes1->5.dex) to the server for comparing hash, and if it doesn't match, the server will prevent the app from logging in with GW934 error : `Re-install app to continue using app.`. The other function (eg: DigitalOTP) that works without logging in still works.

</details>

## DISCLAIMER
- I'm not responsible if someone abuse this patch to do illegal things, since it's originally made for power users and developers only.

## Documentation

- [MBCPApp Patcher Documentation](docs/)

## Requirements & Building

- Any actual Linux environment or macOS (Arch Linux based recommended)
- Little knowledge about terminal commands
- `android-tools` `wget` for Arch/Fedora based and `android-sdk-platform-tools` for Debian based
- `android-platform-tools` for macOS with brew
- `git` installed
- `java` or `jdk-openjdk` installed
- `figlet` for showing banner (optional)
- `xmlstarlet` for reformatting AndroidManifest after unpacking

[Building App from Patcher](#building)

## Patches list :

- Important notice (must read!) : 

<details>

> [!IMPORTANT]
> Following patches can be applied for current/newer app version, but the app will refuse to login with `GW934` error :
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
> At this point, the workaround for it is still unknown :(
>
> Except for testing, mentioned patches shouldn't be used for any normal use cases. So for now, avoid it when patching app. 
> 

</details>

### [📦 `MB Bank : com.mbmobile`](https://t.me/embeeapks)

| ⚙️ Patch | 📜 Description | 🏦 Suggested version |
|:--------:|:--------------:|:-----------------:|
| `Add verified badge` | Replaces the MIC protection shield with verified badge to make it looks more cute :3 | v6.4.0 ~ v6.4.94 |
| `Adaptive launcher icon` | Adds the adaptive & themed icon support to the app. Thanks to @fukiame ! | v6.4.0 ~ v6.4.94 |
| `Proper notification icon` | Temporary fixes for the app notification icon. Thanks to @fukiame ! | v6.4.0 ~ v6.4.94 |
| `Block adjust volume on sEKYC` | Prevent the device volume from being adjusted when entering eKYC activity. | v6.4.0 ~ v6.4.94 |
| `Better custom background screen` | Replace the preview custom background from awful to useful. | v6.4.84 ~ v6.4.94 |
| `Change app logo` | Change the app logo with set of icons. | v6.4.0 ~ v6.4.94 |
| `Change widget background to dark ` | Change widget background to dark if you use MBBHomeWidget. | v6.4.0 ~ v6.4.94 |
| `Custom VTAP screen` | Warn users about critical VTAP trigger error from app. | v6.4.53 ~ v6.4.94 |
| `Tian37 Fix` | Nuke detection points within Tian37 libraries. | v6.4.87 ~ v6.4.94 |
| `Force portrait screen` | Force the screen always portrait on app, espcially when launching. | v6.4.0 ~ v6.4.94 |
| `Remove MB AI Bullsh*t resources` | Remove the bullsh*t MB AI resources from app. Need to implement more in the future. | v6.4.74 ~ v6.4.94 |
| `Remove MB Themes Store` | Remove the MB Themes Store banner from Themes list, preventing access to MB Theme Store. | v6.4.28 ~ v6.4.94 |
| `Remove invoke to mbshield` | Make app don't invoke to mbshield when opening (MainActivity) and (MBBHomeWidgetQR) only | v6.4.22 ~ v6.4.94 |
| `Remove new zimperium check` | Remove the new Zimperium (ZDefend) root detection from app. Picked up from Legacy Patch. | v6.4.60 ~ v6.4.94 | 
| `Remove built-in fonts` | Remove app font and force to use device font for most app components. | v6.4.0 ~ v6.4.94 |
| `Modify app theme` | Modify the built-in app theme from original one to other themes. | v6.4.30 ~ v6.4.94 |
| `Remove garbage permission and activities` | Removes tracking permission & activities from app. | v6.4.0 ~ v6.4.94 |
| `Revert old eMBee logo` | Revert old eMBee logo, especially on product consultation options. | v6.4.53 ~ v6.4.94 |
| `Remove useless libraries` | Remove the useless libraries from app, only for v6.4.67+ | v6.4.67 ~ v6.4.94 |
| `Remove animated QR background` | Remove the animated QR background from bottom navigation bar and replace with white background. | v6.4.43 ~ v6.4.94 |
| `Remove VNPAY VMB20` | Remove the VNPAY Airplane related activities. | v6.4.55 ~ v6.4.94 |
| `Restore old registration resources` | Restore old resources on `onboarding` page. | v6.4.48 ~ v6.4.94 |
| `Hide VTAP root detection activity & dialog` | Hide the old root detection screen and dialog showing "Device is rooted" (might have issues with some HyperOS ROMs). | v6.4.0 ~ v6.4.94 |
| `Legacy hide VTAP activity & dialog` | Hide the first root detection screen with dialog showing "Device is rooted" but not bypassing it. (GW908 will present, unlike standard `Hide VTAP root detection activity & dialog` patch). Only use for some ugly ROMs which is crashing with standard patch. | v6.4.53 ~ v6.4.94 |
| `Remove protection shield` | Remove the MIC protection shield on profile picture and login screen. (not app protection) | v6.4.0 ~ v6.4.94 |
| `Remove app from launcher` | Remove the app icon from launcher, and start with `am start` or with MBZDefend-Fix Action/Termux. | v6.4.0 ~ v6.4.94 |
| `Set targetSdkVersion to 34` | Set the `targetSdkVersion` to 34 (Android 14) to prevent UI issues on some activities. | v6.4.10 ~ v6.4.94 |
| `Add modified resources` | Adds the specific strings for MBCP on eKYC phases, and modify the DigiBank logo. | v6.4.0 ~ v6.4.94 |
| `Add anime resources` | Adds anime-related resources to some components inside app. | v6.4.45 ~ v6.4.94 |

## Old patches

> [!IMPORTANT]
> Following patches are no longer compatible with newer/current app version. It can't be fixed unless MB decompress the `libapp.so` (which will never happen) or until I find the method to decompress it manually.

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
- Following patches are not implemented or outdated, which is used for discontinued MB app version.
### [📦 `MB Bank : com.mbmobile`](https://t.me/embeeapks)
<details>

| ⚙️ Patch | 📜 Description | 🏦 Suggested version |
|:--------:|:--------------:|:-----------------:|
| `Bypass signature check` | Not implemented (Use bypass GW934 checksum instead) | v6.4.0 ~ v6.4.21 |
| `[TEST] Remove v6.4.56 root detection` | New workaround that removes new Zimperium (ZDefend) root detection from app. | v6.4.56 |
| `Bypass 1200 error` | Workaround for 1200 error that happening on original MB app with specific version, now discontinued. | v6.4.45 |
</details>

## Proprietary code
> [!WARNING]
> This project contains some proprietary code extracted from MB's app that has been modified to bypass things in the app, but the modified proprietary code is completely public and open source, it will be used for some patches.

- Proprietary code exists in following folder :

- 1. `blob_patches/bypass_apptampering`
- 2. `blob_patches/noadjust_volume_sekyc`
- 3. `blob_patches/skip_maintainscreen`
- 4. `blob_patches/bypass_accessibility_applist`
- 5. `blob_patches/bypass_rootold`
- 6. `blob_patches/fix_df16211`
- 7. `blob_patches/noinvoke`

- Under `mbsig` directory, it contains original signature from original MB's app, which is necessary to make app works after patching process because the app doesn't work with different APK signature.
- Everything including that listed above code are all licensed under MIT license, it can be considered as reverse engineered code :>

## Contributing | AI/LLM code or NOT ?

- Never, not even auto-complete LLM-powered suggestions. PR is currently closed for some personal reasons.

- Even though this project is NOT vibe-coded or AI/LLM-assisted, another dependencies that the project heavily rely on (APKEditor, coreutils, etc) may contains AI/LLM-generated code or assisted by AI/LLM. While I'm straightly disagree it, theres no escape for that in big 2026 (and also in few next years) so we have to accept the truth that some of dependencies the project relies on can contains AI/LLM code, but that doesn't mean I will code or put AI/LLM-assisted (or generated) code in this project at all. 

- Remember : Project may rely on dependencies that can contains AI/LLM code, but is written by a human and NOT LLM (or so calld Generative AI) doesn't mean the project contains AI/LLM code. Every single line of code is done by contributors and me (@cuynu) without any AI/LLM assistance at all.

- If you want to use Generative AI-tools / LLMs for contributing, please fork and do it yourself. We do not accept AI/LLM code in this project at all.

## Project history

<details>

- 05/2023 : MB Bank MOD APK ANDROID project created on Telegram (@mbbmod), providing modified MB Bank APKs since v5.8 with a lot of features such as bypassing accessibility check and show a guide to hide root instead of show rooted screen then close the app.

- 01/2024 : Channel from 2023 is deleted, due to Telegram banning account (@cuynutt)

- 06/2024 : [MB Android Patched] channel created, providing modified MB Bank Flutter APKs and then MB React Native APKs

- 01/2025 : Channel renamed to [MBCP Android] due to MB discontinued version that does not requires CorePatch. MBCP Helper also existed since then.

- 05/2025 : Project is rewritten from closed source (mostly with MT Manager) to open source with `bash` programming language, reduce the trust issues with closed source app before, also allow anyone to patch it manually.

- 06/2025 : [Hide VTAP root detection activity & dialog] patch was added, enables the ability to use the MBCP app with superuser (root permission) enabled.

- 07/2025 : MB forced zimperium with v6.4.56, which throw `XPE002` dialog if zimperium is completely destroyed. I fixed it.

- 08/2025 : @fukiame joining to refactor the project source code, make it easier to maintain in the future, also implement good logic.

- 09/2025 : MB forced checksum check, throw `GW934` error if any classes$.dex file or `libapp` aka zimperium aka `libmbshield` is modified. I made a bypass, it works for v6.4.63 up to v6.4.66.

- 10/2025 : MB discontinued `v6.4.66`, the last version with almost all patches working (except `bypass_accessibility_applist`) with `GW525` error when logging in

- 11/2025 : MB released `v6.4.74` with AI-crap button that replaces legacy search button. I created a patch that force replace it back to old search icon. 

- 02/2026 : MB released `v6.4.85` with enhanced Singalarity eKYC detection (detects `data/adb/modules` and `com.rifsxd.ksunext`), so I created a patch that removed the check.

- 03/2026 : After a long-term pain, Me (author of this project) finally find the right label for myself. This project turned me from just a YouTuber aka tinkerer to a developer who love to write code.
</details>

## Building

### Install dependencies

for Arch Linux / EndeavourOS / CachyOS / any Arch-based distributions
```
sudo pacman -Sy android-tools wget jdk-openjdk figlet xmlstarlet git
```
for Debian / Mint / Ubuntu / any debian-based distributions
```
sudo apt install android-sdk-platform-tools xmlstarlet figlet wget git default-jre coreutils
```
for Fedora / any fedora-based distributions
```
sudo dnf makecache --refresh
sudo dnf -y install wget xmlstarlet android-tools java-latest-openjdk.x86_64
git clone https://github.com/M0Rf30/android-udev-rules.git
cd android-udev-rules
sudo bash install.sh
```

for macOS (brew)
```
brew install xmlstarlet wget openjdk android-platform-tools figlet gnu-sed
sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
```

### Clone repository
You can choose between 2 repository mirrors, one is the repository on Disroot, and the other one is the Selfhosted Forgejo instance, it has no difference as both are pushed at the same time.

Disroot 
```
cd ~
git clone https://git.disroot.org/mbcp/mbbpatch.git
cd mbbpatch/MBCPApp
```
Self-hosted Instance
```
cd ~
git clone https://cuynutt.ddns.net/mbcp/mbbpatch.git
cd mbbpatch/MBCPApp
```

### Run the Patcher
Ensure that you already in following folder to continue : `~/mbbpatch/MBCPApp`
```
./mbcpapp.sh
```
- Download tools with `14) Download tools` function first, it will download `apktool` and `apkeditor` to `tools` folder. This is required since `2) Unpack APK` function requires it.

### Patch the app 

> [!IMPORTANT]
> If you are patching MB Bank with those version : 
> 
> MB Bank : v6.4.63 | v6.4.64 | v6.4.65 | v6.4.66
> 
> Ensure that you applied `Bypass GW934 checksum` patch after applied all other patches, so the app can works without GW934 error when logging in.

- Grab MB Bank apks from [eMBee APKs](https://t.me/embeeapks) or [Lotus Chat](https://lotuschat.vn/w/+anSH1BbDbAYn54JC9nIC9A) (in case if you don't have access to Telegram) and copy it to `~/mbbpatch/MBCPApp/mbapk`
- Alternatively, if you don't have access to both Telegram & Lotus Chat, download from [Google Play](https://play.google.com/store/apps/details?id=com.mbmobile) then extract the MB Bank apks and copy it to `~/mbbpatch/MBCPApp/mbapk` or get it [from my instance](http://cuynutt.ddns.net/mbcp/mbmobile-apks)
- Convert apks to apk first using `3) Convert apks to apk` function
- Unpack apk with `2) Unpack apk` function
- Use `7) Patch App` function, it should show a list of patches, select the patch you wanted to and it will automatically patch the app at `mbapk/mbapk_original`
- Note that the patches list might different, depends on your current unpacked MB Bank app version, as there will be a patch that compatible with specific version, for example patch [Bypass accessibility & malicious apps check] is compatible with v6.4.54, but not with v6.4.55 or newer, so if you have v6.4.55 or newer, then that patch will be hidden from patches list.
- The patcher should show info to the log when use `7) Patch App` function if it found that the current unpacked app version is not compatible with one of implemented patches like this : 
```
[INFO] [parser] skipping [Patch A] as current version is higher than patch version clamp
[INFO] [parser] skipping [Patch B] as current version is lower than patch version clamp
```
- View full patches list [here](/mbcp/mbbpatch#patches-list) for more info about compatible version, or view the `MAXVER` value and `MINVER` in patch files `~/mbbpatch/MBCPApp/patches/*.sh`

### Repack the app
- So you have applied all the patches you wanted to ?
- Exit patch app function with the exit option in the last patch list
- Use `4) Repack APK` to repack patched app
- What's next? wait :)
- Patcher will repack the app, and then [restore signature]() to make sure that app can load, the example of nice repack process : 
```
00.000 I: [BUILD] Using: APKEditor version 1.4.5, ARSCLib version 1.3.8
            -t = sig                                     
      -dex-lib = internal                                
          -sig = mbsig/signatures                        
            -i = mbcpapp_apk/MBCP_Flutter_TMP.apk        
            -o = mbcpapp_apk/MBCP_Flutter_SelfPatched.apk
 _______________________________________________________ 
00.013 I: [BUILD] Restoring signatures ...
00.214 I: [BUILD] Writing apk...
00.217 I: [BUILD] Buffering compress changed files ...
00.226 I: [BUILD] Writing files: 3332
00.453 I: [BUILD] Writing signature block ...                                                                                             
00.909 I: [BUILD] Saved to: mbcpapp_apk/MBCP_Flutter_SelfPatched.apk
[19:45:55:70] [INFO] Completed! Repacked APK are saved as [mbcpapp_apk/MBCP_Flutter_SelfPatched.apk] !!!
[19:45:55:70] [INFO] Install and trying to open it when ಠ‿ಠ
[19:45:55:70] [INFO] If you are facing issues, report it on Telegram [@mbbpatch_eng] or Disroot Forgejo : mbbpatch !!
```
- Patched app will be `MBCP_Flutter_SelfPatched.apk` on `~/mbbpatch/MBCPApp/mbcpapp_apk/`
- As this is unsigned app, Android will refuse to install `MBCP_Flutter_SelfPatched.apk` by default. In order to install it, you MUST install [MBCP Helper](/mbcp/mbcp-helper/releases) or [CorePatch](https://github.com/LSPosed/CorePatch/releases) and enable the "Disable digest verify" option to bypass android package signature verification. 
- If you don't know how to deal with MBCP Helper, follow this guide : [MBCP Installation](/mbcp/info_en/wiki/mbcpinstall)
- Copy this `MBCP_Flutter_SelfPatched.apk` then install to your device, or simply use `5) Install patched app` function, its will do the same thing with `adb`
- Profit :)

</details>

## TODO

- [ ] Bypass the new dex & libraries checksum for MB v6.4.67+ 

- [ ] Crash fixes for `Hide VTAP root detection activity & dialog` patch (OEM ROMs)

- [ ] Proper display language under Singalarity eKYC phase 

- [x] Revert old Bee Rich logo

- [x] Adapt new v6.4.67 zimperium structure

- [x] Adapt new v6.4.68 trungthu theme

## Credits
- [apktool](https://github.com/iBotPeaches/Apktool)
- [APKEditor](https://github.com/REAndroid/APKEditor/)
- [MT Manager](https://mt2.cn/) to handle APK signature scheme v2/v3 (in the past)
- [Zhaxia CN](https://t.me/zhaxia_cn) for sticker packs (Add anime resources)
- [FlatIcon](https://flaticon.com) for some icons, including search icon, verified badge

## Contributors
- [Cuynu](/cuynu) - developer (also [youtuber](https://youtube.com/@cuynu))
- [fukiame](/fukiame) - refactor & other improvements - contributor
- [Ngankbakaa](https://github.com/miyukocutee) - contributor
