## TWRP device tree for Xiaomi Redmi Note 3 and Xiaomi Redmi Note 3 Special Edition (kenzo/kate)

Add to `.repo/local_manifests/kenzo.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project path="device/xiaomi/kenzo" name="android_device_xiaomi_kenzo" remote="TeamWin" revision="android-7.1" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_kenzo-eng
make -j8 recoveryimage
```

Kernel sources are available at: https://github.com/LineageOS/android_kernel_xiaomi_msm8956
