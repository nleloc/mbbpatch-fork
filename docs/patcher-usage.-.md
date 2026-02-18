## Requirements
> [!warning]
> **AI-powered** forks are not suitable with this docs! USE ANOTHER FORK !

- Any actual Linux environment or macOS (Arch Linux based recommended)
- Little knowledge about terminal commands
- `android-tools` `wget` for Arch/Fedora based and `android-sdk-platform-tools` for Debian based
- `android-platform-tools` for macOS with brew
- `git` installed
- `java` or `jdk-openjdk` installed
- `figlet` for showing banner (optional)
- `xmlstarlet` for reformatting AndroidManifest after unpacking


## Install dependencies

for Arch Linux / EndeavourOS / CachyOS / any Arch-based distributions (except Manjaro as it's usually break system packages)
```
sudo pacman -Sy android-tools wget jdk-openjdk figlet xmlstarlet git
```
for Debian / Mint / Ubuntu / any debian-based distributions
```
sudo apt install android-sdk-platform-tools xmlstarlet figlet wget git default-jre
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

## Clone repository
You can choose between 2 repository mirrors, one is the repository on Disroot, and the other one is the Selfhosted Forgejo instance, it has no difference as both are pushed at the same time.

DIsroot 
```
cd ~
git clone https://git.disroot.org/mbcp/mbbpatch.git
cd mbbpatch/MBCPApp
```
Self-hosted Instance
```
cd ~
git clone http://cuynutt.ddns.net/mbcp/mbbpatch.git
cd mbbpatch/MBCPApp
```

## Run the Patcher
Ensure that you already in following folder to continue : `~/mbbpatch/MBCPApp`
```
./mbcpapp.sh
```
- Download tools with `14) Download tools` function first, it will download `apktool` and `apkeditor` to `tools` folder. This is required since `2) Unpack APK` function requires it.

## Patch the app 

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

## Repack the app
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
