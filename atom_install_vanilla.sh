echo '>>>>> Installing vanilla kernel...'
sudo cp bzImage-vanilla /boot/vmlinuz-3.2.1-MWG
sudo cp System.map-vanilla /boot/System.map-3.2.1-MWG
sudo cp .config-vanilla /boot/config-3.2.1-MWG
echo '>>>>> Installing vanilla modules...'
sudo rm -rf /lib/modules/3.2.1-MWG
sudo mkdir /lib/modules/3.2.1-MWG
sudo cp -R modules-vanilla/3.2.1-MWG/ /lib/modules/
echo '>>>>> Updating initramfs...'
sudo update-initramfs -c -k 3.2.1-MWG
echo '>>>>> Updating grub...'
sudo update-grub
echo '>>>>> Done!'
