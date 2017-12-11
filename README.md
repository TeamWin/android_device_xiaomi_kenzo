# TWRP device tree for Xiaomi Redmi Note 3 and Xiaomi Redmi Note 3 Special Edition (kenzo/kate)

How To Build

```
mkdir -p .repo/local_manifests
wget -O .repo/local_manifests/default.xml https://raw.githubusercontent.com/rn2-twrp/android_device_xiaomi_kenzo/android-8.0/default.xml
repo sync --force-sync -j4
. build/envsetup.sh
lunch omni_kenzo-eng
make -j4 clobber && make -j4 recoveryimage
```
