echo 'Starting to clone stuffs needed for your device'
echo 'Cloning Device tree [1/4]'
# Device Tree
rm -rf device/realme/RMX3371
git clone --depth=1 https://github.com/ProjectElixir-Devices/android_device_realme_rmx3371.git -b A13 device/realme/RMX3371

echo 'Cloning Vendor tree [2/4]'
#  Vendor Tree
rm -rf vendor/realme/RMX3371
git clone --depth=1 https://github.com/ProjectElixir-Devices/proprietary_vendor_realme_rmx3371.git -b dolby vendor/realme/RMX3371

echo 'Cloning Kernel tree [3/4]'
# Kernel Tree
rm -rf kernel/realme/sm8250
git clone --depth=1 https://github.com/abhis699/kernel_realme_sm8250 -b AGNi-AOSP kernel/realme/sm8250

echo 'Cloning Hardware Oplus [4/4]'
# Hardware Oplus
rm -rf hardware/oplus
git clone --depth=1 https://github.com/abhis699/hardware_oplus_kona hardware/oplus

echo 'Sync some stuff from lineage'
#Lineage Compat
rm -rf hardware/lineage/compat
git clone --depth=1 https://github.com/LineageOS/android_hardware_lineage_compat.git hardware/lineage/compat

echo 'Sync GCamGOPrebuilt'
#GCamGOPrebuilt
rm -rf packages/apps/GCamGOPrebuilt
git clone --depth=1 https://github.com/Evolution-X/packages_apps_GCamGOPrebuilt packages/apps/GCamGOPrebuilt

echo 'Completed, Now proceeding to lunch'
