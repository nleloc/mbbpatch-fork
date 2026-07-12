# Fix VTAP Certificate usage

This patch can't be applied just by cloning regular repo and apply, I already mentioned it requires specific `firmware` (and `profile` for older base) in `fixcert` folder to function

It can also revert new detection behavior of V-Key (VTAP) like SELinux check, LSPosed, Zygisk check, etc (choose v6.4.78 blobs or older, max to v6.4.53)

```
# from fix_vtap_cert.sh : 

# What is [firmware] and [profile]?
# It contains the firmware and certificate for VTAP to communicate with the app connection
# Both [firmware] and [profile] is encrypted with base64 format.
# We do not provide it in the project source, but you can get it from the app itself, in [assets] folder.
```

## How to apply it?

- You can take `firmware` and `profile` file from older app base, then copy to `fixcert` folder in `MBCPApp/` or clone the following repo (it has blobs for some versions) 

```
# clone vkey vtap blobs repo
git clone https://git.disroot.org/cuynu/vtapfw_blobs.git
cd vtapfw_blobs

# in vtapfw_blobs folder, the structure are like this
[cuynu@x99e vtapfw_blobs] $ tree
.
├── README.md
├── v6.4.66
│   ├── firmware
│   └── profile
├── v6.4.75
│   ├── firmware
│   └── profile
└── v6.5.2
    ├── firmware
    └── profile
```

- Just choose the proper blobs you want to use, then copy it to `fixcert` folder in `MBCPApp` (in this example i'll use v6.4.75 one, `mbbpatch` cloned in home folder)
```
cp v6.4.75/firmware ~/mbbpatch/MBCPApp/fixcert
# DO NOT copy profile if you are patching newer base then the blobs one, otherwise it will fail certificate check.
cp v6.4.75/profile ~/mbbpatch/MBCPApp/fixcert
```

Then run patcher again `./mbcpapp.sh` -> `Patch App` -> `Fix VTAP Certificate` -> it will work :)

After installed the patched app, if you have previous data, the old one may still present there, at this point delete with
```
su -c rm -f /data/data/com.mbmobile/firmware
su -c rm -f /data/data/com.mbmobile/profile
```



