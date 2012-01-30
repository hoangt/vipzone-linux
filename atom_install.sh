echo '>>>>> Installing kernel...'
sudo cp bzImage /boot/vmlinuz-3.2.1-MWG+
sudo cp System.map /boot/System.map-3.2.1-MWG+
sudo cp .config /boot/config-3.2.1-MWG+
echo '>>>>> Installing modules...'
sudo rm -rf /lib/modules/3.2.1-MWG+
sudo mkdir /lib/modules/3.2.1-MWG+
sudo cp -R lib/modules/ /lib/modules/
echo '>>>>> Updating initramfs...'
sudo update-initramfs -c -k 3.2.1-MWG+
echo '>>>>> Updating grub...'
sudo update-grub
echo '>>>>> Done!'
