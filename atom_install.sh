echo '>>>>> Installing kernel...'
sudo cp bzImage-MWG /boot/vmlinuz-3.2.1-MWG+
sudo cp System.map-MWG /boot/System.map-3.2.1-MWG+
sudo cp .config-MWG /boot/config-3.2.1-MWG+
echo '>>>>> Installing modules...'
sudo rm -rf /lib/modules/3.2.1-MWG+
sudo mkdir /lib/modules/3.2.1-MWG+
sudo cp -R modules/3.2.1-MWG+/ /lib/modules/
echo '>>>>> Updating initramfs...'
sudo update-initramfs -c -k 3.2.1-MWG+
echo '>>>>> Updating grub...'
sudo update-grub
echo '>>>>> Done!'
