echo "cloning common tree"
git clone https://github.com/Dragon-s-Playground/device_realme_sm8250-common.git -b sup_ext-13 device/realme/sm8250-common

echo "cloning common vendor"
git clone https://github.com/Dragon-s-Playground/vendor_realme_sm8250-common.git vendor/realme/sm8250-common

echo "cloning proprietary vendor"
git clone https://github.com/Dragon-s-Playground/vendor_realme_rmx3371.git vendor/realme/rmx3371

echo "cloning kernel"
git clone https://github.com/RealmeGTNeo3T-Devs/android_kernel_realme_spartan.git kernel/realme/sm8250 --depth=1

echo"Add kernelSU support"
cd kernel/realme/sm8250
curl -LSs "https://raw.githubusercontent.com/tiann/KernelSU/main/kernel/setup.sh" | bash -
cd ../../..

echo "cloning oplus hals"
git clone https://github.com/Dragon-s-Playground/android_hardware_oplus.git  hardware/oplus

echo "cloning oplus camera"
git clone https://gitlab.com/pjgowtham/proprietary_vendor_oplus_camera.git vendor/oplus/camera

echo "cloning gapps"
git clone https://gitlab.com/DragonEmperor9480/android_vendor_gms.git vendor/gms --depth=1