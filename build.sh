rm -rf .repo/local_manifests; \
repo init --depth=1 -u https://github.com/AfterlifeOS/android_manifest.git -b 14 --git-lfs; \
/opt/crave/resync.sh; \
rm -rf device/xiaomi/munch; \
rm -rf device/xiaomi/sm8250-common; \
rm -rf kernel/xiaomi/sm8250; \
rm -rf vendor/xiaomi/munch; \
rm -rf vendor/xiaomi/sm8250-common; \
rm -rf hardware/xiaomi; \
rm -rf vendor/lineage-priv; \
git clone https://gitea.com/rik-x290/device.git -b afterlife device/xiaomi/munch; \
git clone https://gitea.com/rik-x290/common.git -b afterlife device/xiaomi/sm8250-common; \
git clone https://github.com/LineageOS/android_hardware_xiaomi.git hardware/xiaomi; \
git clone https://github.com/rik-x777/vendor.git vendor/xiaomi/sm8250-common; \
git clone https://github.com/AnkitSavani111/android_kernel_xiaomi_sm8250.git kernel/xiaomi/sm8250; \
git clone https://github.com/TheMuppets/proprietary_vendor_xiaomi_munch.git vendor/xiaomi/munch; \
. build/envsetup.sh; \
goafterlife munch
