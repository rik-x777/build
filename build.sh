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
rm -rf hardware/dolby; \
rm -rf packages/apps/ViPER4AndroidFX; \
rm -rf vendor/xiaomi/miuicamera; \
git clone https://github.com/rik-x777/android_device_xiaomi_munch.git device/xiaomi/munch; \
git clone https://github.com/rik-x777/android_device_xiaomi_sm8250-common.git device/xiaomi/sm8250-common; \
git clone https://github.com/EmanuelCN/kernel_xiaomi_sm8250.git -b munch kernel/xiaomi/sm8250; \
#git clone https://github.com/crdroidandroid/proprietary_vendor_xiaomi_munch.git vendor/xiaomi/munch; \
#git clone https://github.com/crdroidandroid/proprietary_vendor_xiaomi_sm8250-munch.git vendor/xiaomi/sm8250-common; \
git clone https://github.com/DumprX/DumprX.git dumprx; \
cd dumprx && ./setup.sh; \
wget https://cdnorg.d.miui.com/OS1.0.5.0.ULMMIXM/miui_MUNCHGlobal_OS1.0.5.0.ULMMIXM_4cab56c7e5_14.0.zip; \
./dumper.sh miui_MUNCHGlobal_OS1.0.5.0.ULMMIXM_4cab56c7e5_14.0.zip; \
cd ..; \
./device/xiaomi/munch/extract-files.sh dumprx/out; \
git clone https://github.com/LineageOS/android_hardware_xiaomi.git -b lineage-22.0 hardware/xiaomi; \
git clone https://gitea.com/hdzungx/android_vendor_xiaomi_miuicamera.git vendor/xiaomi/miuicamera; \
git clone https://gitea.com/hdzungx/android_vendor_xiaomi_munch-firmware.git vendor/xiaomi/munch-firmware; \
git clone https://github.com/RisingTechOSS-devices/packages_apps_ViPER4AndroidFX.git packages/apps/ViPER4AndroidFX; \
git clone https://github.com/rik-x777/keys.git vendor/lineage-priv; \
cd kernel/xiaomi/sm8250; \
git submodule init && git submodule update; \
rm -rf KernelSU/userspace/su; \
cd ../../..; \
. build/envsetup.sh; \
brunch munch
