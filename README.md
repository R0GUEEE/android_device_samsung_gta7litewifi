# TWRP device tree for Samsung SM-T220 (gta7litewifi)
*Includes custom prebuilt kernel to enable touch*

## Compiling the recovery 

Get the TWRP manifest :

    repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
    repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

    
Clone the device tree to the "/device/samsung/gta7litewifi" directory :

    git clone https://github.com/R0GUEEE/android_device_samsung_gta7litewifi.git device/samsung/gta7litewifi


Build the image :

    . build/envsetup.sh
    lunch twrp_gta7litewifi
    mka recoveryimage


   
