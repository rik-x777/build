rm -rf .repo/local_manifests; \
repo init -u https://github.com/crdroidandroid/android.git -b 15.0 --git-lfs; \
/opt/crave/resync.sh; \
rm -rf device/xiaomi/munch; \
rm -rf device/xiaomi/sm8250-common; \
rm -rf kernel/xiaomi/sm8250; \
rm -rf vendor/xiaomi/munch; \
rm -rf vendor/xiaomi/sm8250-common; \
rm -rf hardware/xiaomi; \
rm -rf vendor/lineage-priv; \
rm -rf packages/apps/ViPER4AndroidFX; \
rm -rf vendor/gcam; \
rm -rf vendor/xiaomi/munch-firmware; \
git clone https://github.com/rik-x777/android_device_xiaomi_munch.git device/xiaomi/munch; \
git clone https://github.com/rik-x777/android_device_xiaomi_sm8250-common.git device/xiaomi/sm8250-common; \
git clone https://github.com/EmanuelCN/kernel_xiaomi_sm8250.git -b munch kernel/xiaomi/sm8250; \
git clone https://github.com/rik-x777/proprietary_vendor_xiaomi_munch.git vendor/xiaomi/munch; \
git clone https://github.com/rik-x777/proprietary_vendor_xiaomi_sm8250-common.git vendor/xiaomi/sm8250-common; \
git clone https://github.com/LineageOS/android_hardware_xiaomi.git -b lineage-22.0 hardware/xiaomi; \
git clone https://github.com/crdroidandroid/vendor_xiaomi_munch-firmware.git vendor/xiaomi/munch-firmware; \
git clone https://github.com/RisingTechOSS-devices/packages_apps_ViPER4AndroidFX.git packages/apps/ViPER4AndroidFX; \
git clone https://github.com/rik-x777/vendor_gcam.git vendor/gcam; \
git clone https://github.com/rik-x777/keys.git vendor/lineage-priv; \
cd kernel/xiaomi/sm8250; \
git submodule init && git submodule update; \
rm -rf KernelSU/userspace/su; \
cd ../../..; \
. build/envsetup.sh; \
brunch munch
