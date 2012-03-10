echo '>>>>> Compiling new kernel...'
make -j4 > /dev/null
echo '>>>>> Installing kernel...'
sudo make install
echo '>>>>> Installing modules...'
sudo make modules_install
echo '>>>>> Updating initramfs...'
sudo update-initramfs -c -k 3.2.1-MWG+
echo '>>>>> Copying .config to vanilla kernel...'
cp .config ../linux-3.2.1-vanilla/
echo '>>>>> Compiling vanilla kernel...'
cd ../linux-3.2.1-vanilla/
make oldconfig
make -j4 > /dev/null
echo '>>>>> Installing vanilla kernel...'
sudo make install
echo '>>>>> Installing vanilla modules...'
sudo make modules_install
echo '>>>>> Updating initramfs for vanilla kernel...'
sudo update-initramfs -c -k 3.2.1-MWG
echo '>>>>> Cleaning up /boot...'
sudo rm /boot/*.old
echo '>>>>> Compiling memtest86-3.5b-MWG...'
cd ../memtest86-3.5b-MWG
make
echo '>>>>> Installing memtest86-3.5b-MWG...'
sudo cp memtest.bin /boot/memtest86+.bin
cd ../linux-3.2.1-MWG
echo '>>>>> Updating GRUB...'
sudo update-grub
echo '>>>>> Compiling memallocator...'
cd ../memallocator
gcc memallocator.c -o memallocator
echo '>>>>> Done!'
