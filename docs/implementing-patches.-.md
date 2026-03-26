## Implementing patches 
- patch template is implemented by @fukiame from this commit : [0a89bce342](/mbcp/mbbpatch_fix/commit/0a89bce3422b72dd6d09325f0150be619e5531cd) so just need to follow their `TEMPLATE`
- him well documented it on the commit message : 
```
adding new patches is now trivial:

  cd patches
  cp TEMPLATE patch_name_whatever.sh
  # then just fill in patch name and ver clamp if desired

this gets rid of the need for excessive if-elses and not-so-pleasing indents

for logging, instead of using pure echo, 4 new "levels" can be utilized
- `info` : normal
- `good` : info but have green color?
- `warn` : warning
- `err` : error
```

- they even implemented the sed that patching libapp to one function, called `sed_libapp` so you just need to call them and define it a value 

 example : 
```
sed_libapp 's|{old string}|{new string}|g'
```
- note that the old string and new string MUST be at the same character length in order to not breaking `libapp.so` ELF header

same thing with `AndroidManifest.xml` too, called `manifest_remove`
```
manifest_remove "android.manifest.YouWantedToRemove"
```
- `get_mb_ver` function is used to get MB app version by reading version code
 
- but that is not actually enough, you have to do smth that is patching the app, like `rm`, `sed`, `mv` operation. below is the example. you can literally do anything you wanted to mess up in the patches file : 
```
#!/usr/bin/env bash
# PATCHNAME: Remove banners & MiniApp
# MAXVER: 67
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

sed_libapp 's|banner|remove|g'
sed_libapp 's|marketplacehome|removemarketapp|g'

info 'Moving links...'
sed_libapp 's|https://miniappgw.mbbank.com.vn/homebox/webview/auth?|https://git.disroot.org/mbcp/info/wiki/MiniApp?ref=mb|g'
sed_libapp 's|https://miniappgw-uat.mbbank.com.vn/homebox-public/|https://git.disroot.org/mbcp/info/wiki/MiniApp?refs|g'

info 'Removing related resources...'
rm -rf 'mbapk/mbapk_unpacked/root/assets/flutter_assets/packages'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/billing_img_defaultBanner.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/billing_img_defaultBanner.private.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/explore_img_defaultBanner.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/coreBanking_img_successBanner.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/homeLanding_img_defaultBanner.webp'
rm -f 'mbapk/mbapk_unpacked/root/assets/flutter_assets/assets/images/dynamic/base/homeLanding_img_defaultBanner.private.webp'
```
