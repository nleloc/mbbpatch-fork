# Notice 

`mbsig.apk` and `mblitesig.apk` are only contain the APK signature scheme of original MB Bank / MB Lite app, which is used after repacking APK to make patched app works. it's NOT closed-source parts.

`signature` folder contains the APK signature scheme of original MB Bank extracted from APKEditor, likes `mbsig.apk` but more easily cuz don't need MT Manager anymore, it's will be used during repacking APK process to make patched app works. it's NOT closed-soruce parts.

- The closed source part is whole original MB Bank app and MT Manager (which used to preserve APK signature scheme V2/V3), while MBCPApp Patcher which patches original MB Bank open source.
