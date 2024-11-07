rm -rf .repo/local_manifests; \
repo init --depth=1 --no-repo-verify --git-lfs -u https://github.com/ProjectInfinity-X/manifest -b 15 -g default,-mips,-darwin,-notdefault; \
/opt/crave/resync.sh; \
rm -rf device/xiaomi/munch; \
rm -rf device/xiaomi/sm8250-common; \
rm -rf kernel/xiaomi/sm8250; \
rm -rf vendor/xiaomi/munch; \
rm -rf vendor/xiaomi/sm8250-common; \
rm -rf hardware/xiaomi; \
rm -rf vendor/lineage-priv; \
git clone https://codeberg.org/rik/android_device_xiaomi_munch.git -b infinity device/xiaomi/munch; \
git clone https://codeberg.org/rik/android_device_xiaomi_sm8250-common.git -b infinity device/xiaomi/sm8250-common; \
git clone https://github.com/LineageOS/android_kernel_xiaomi_sm8250.git kernel/xiaomi/sm8250; \
git clone https://github.com/rik-x777/proprietary_vendor_xiaomi_munch.git -b aosp vendor/xiaomi/munch; \
git clone https://github.com/rik-x777/proprietary_vendor_xiaomi_sm8250-common.git -b aosp vendor/xiaomi/sm8250-common; \
git clone https://github.com/LineageOS/android_hardware_xiaomi.git hardware/xiaomi; \
. build/envsetup.sh; \
lunch infinity_munch-user; \
mka bacon
