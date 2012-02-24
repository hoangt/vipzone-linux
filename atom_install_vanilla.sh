echo '>>>>> Installing vanilla kernel...'
sudo cp bzImage-vanilla /boot/vmlinuz-3.2.1
sudo cp System.map-vanilla /boot/System.map-3.2.1
sudo cp .config-vanilla /boot/config-3.2.1
echo '>>>>> Installing vanilla modules...'
sudo rm -rf /lib/modules/3.2.1
sudo mkdir /lib/modules/3.2.1
sudo cp -R modules/3.2.1/ /lib/modules/
echo '>>>>> Updating initramfs...'
sudo update-initramfs -c -k 3.2.1
echo '>>>>> Updating grub...'
sudo update-grub
echo '>>>>> Done!'
