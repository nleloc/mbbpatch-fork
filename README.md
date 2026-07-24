# MBCPApp Patcher Fork for MB Bank (Android)

> [!IMPORTANT]
> **THIS IS A FORK FOR PERSONAL USAGE**
> 
> For original source code, kindly refer to [MBBPatch repo from Disroot](https://git.disroot.org/mbcp/mbbpatch)
>
> Again, this is a **PERSONAL FORK** for my usage, if you faces any problem, idc


- Original Project FAQ : [Read here](/mbcp/info_en/wiki/faq)
- Licensed as MIT License.
- I'm too lazy to write a new one

> [!IMPORTANT]
> We spend efforts and times for finding the method and make this project. Of course, it's not for scammer, it's for **power users and developers only**.
>
> This fork aim to refactor MBCPApp Patcher only, no prebuilt apk will be provided.

## Introduction

> MBCP Refactoring is my personal fork, trying to refactor MBCP Patcher

- Note : "MBCP" / "MBCPApp" = "MBBank CorePatch"
- MBCP is inspired from [CorePatch](https://github.com/LSPosed/CorePatch) project. Now it can works with [PMPatch](https://github.com/vova7878-modules/PMPatch) too
- This project was made to remove or limit annoying features & root detection & accessibility detection that is implemented by the development team of "MB Bank" Android app with additional features such as custom themes ability, device font, etc (see more in patches list). **It's not PoC (Proof of Concept) project at all.**

## DISCLAIMER
- I'm not responsible if someone abuse this patch to do illegal things, since it's originally made for power users and developers only.

## Documentation

- [MBCPApp Patcher Documentation](docs/)

## Dependencies

- Any actual Linux environment or macOS
- Little knowledge about terminal commands
- `android-tools` `wget` for Arch/Fedora based and `android-sdk-platform-tools` for Debian based
- `android-platform-tools` for macOS with brew
- `git` installed
- `java` or `jdk-openjdk` installed
- `figlet` for showing banner (pls)
- `xmlstarlet` for reformatting AndroidManifest after unpacking

- `apktool` for extracting apk, etc, this will be installed by mbcpapp
- `apkeditor` for packing original signature into app and smt else


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
- You can extract those signature yourself with apkeditor. eg (make sure you're in `mbbpatch-fork/MBCPApp` and ran script with option [14] and [2], ik it's bad, i'll try update it soon)
```
rm -rf mbsig/*
java -jar tools/apkeditor.jar d -t sig -i 'mbapk/Origial-MB-APP.apk' -sig 'mbsig/'
# replace Original-MB-APP.apk with your MB apk name
```
- Everything including that listed above code are all licensed under MIT license.

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

GitHub

```
git clone https://github.com/nleloc/mbbpatch-fork
cd mbbpatch-fork/MBCPApp
```

### Run the Patcher
Ensure that you already in following folder to continue : `~/mbbpatch/MBCPApp`
- Clone this repository first ;)

```
git clone https://github.com/nleloc/mbbpatch-fork
cd mbbpatch-fork/MBCPApp
```

- Actually run patcher
```
./mbcpapp.sh
```
- NOTE: mbcpapp.sh can be found in `mbbpath-fork/MBCPApp/`
- You can use [0] to exit, it can also be used to go back to previous list
- Also [00] to reload script, it should work on all lists

- First time usage: use [14] to download dependency tools to patch (including `apktool` and `apkeditor`), it can be found at `tools` folder

### Patch the app 

- Grab MB Bank apks from [eMBee APKs](https://t.me/embeeapks) or [Lotus Chat](https://lotuschat.vn/w/+anSH1BbDbAYn54JC9nIC9A) (in case if you don't have access to Telegram) and copy it to `mbbpatch-fork/MBCPApp/mbapk`
- Alternatively, if you don't have access to both Telegram & Lotus Chat, download from [Google Play](https://play.google.com/store/apps/details?id=com.mbmobile) then extract the MB Bank apks and copy it to `mbbpatch-fork/MBCPApp/mbapk`

- Convert apks to apk first using `3) Convert apks to apk` function
- Unpack apk with `2) Unpack apk` function
- Use `7) Patch App` function, it should show a list of patches, select the patch you wanted to and it will automatically patch the app at `mbapk/mbapk_unpacked`
- Note that the patches list might different, depends on your current unpacked MB Bank app version, as there will be a patch that compatible with specific version, for example patch [Bypass accessibility & malicious apps check] is compatible with v6.4.54, but not with v6.4.55 or newer, so if you have v6.4.55 or newer, then that patch will be hidden from patches list.
- The patcher should show info to the log when use `7) Patch App` function if it found that the current unpacked app version is not compatible with one of implemented patches like this : 
```
[INFO] [parser] skipping [Patch A] as current version is higher than patch version clamp
[INFO] [parser] skipping [Patch B] as current version is lower than patch version clamp
```
- View full patches list [here](#patches-list) for more info about compatible version, or view the `MAXVER` value and `MINVER` in patch files `~/mbbpatch/MBCPApp/patches/*.sh`

### Repack the app
- So you have applied all the patches you wanted to ?
- Exit patch app function with the exit option in the last patch list
- Use `4) Repack APK` to repack patched app
- What's next? wait :)
- Patcher will repack the app, and then restore signature to make sure that app can load, the example of good repack process : 
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
[19:45:55:70] [INFO] Install and open it wen ಠ‿ಠ
[19:45:55:70] [INFO] If you are facing issues, idk, this is a PERSONAL fork
```
- Patched app will be `MBCP_Flutter_SelfPatched.apk` on `mbbpatch-fork/MBCPApp/mbcpapp_apk/`
- As this has modified apk with original signature kept (cuz app checks for the signature yk), you'll need CorePatch installed and enabled `Disable digest verify`. I don't use PMPatch :) idk

- Now pray for it to work.


## Contributing

- PR are welcome

- [Submit PR here](https://github.com/nleloc/mbbpatch-fork/pulls)

## My thought about AI/LLM
- I don't fucking care

## FUTURE DEVELOPMENT

- I'll try to re-write this as it's a mess after i commited my trash code ;)
- Tryin to turn this from a mess to landfill
- No ETA anytime soon


## Credits
- [apktool](https://github.com/iBotPeaches/Apktool)
- [APKEditor](https://github.com/REAndroid/APKEditor/)
- ~~[MT Manager](https://mt2.cn/) to handle APK signature scheme v2/v3~~ Not used anymore
- [Zhaxia CN](https://t.me/zhaxia_cn) for sticker packs (Add anime resources)
- [FlatIcon](https://flaticon.com) for some icons, including search icon, verified badge

## Original project's Contributors
- [Cuynu](https://git.disroot.org/cuynu) - developer (also [youtuber](https://youtube.com/@cuynu))
- [fukiame](https://git.disroot.org/fukiame) - refactor & other improvements - contributor
- [Ngankbakaa](https://github.com/miyukocutee) - contributor
