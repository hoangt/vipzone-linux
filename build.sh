echo '>>>>> Compiling new kernel...'
make -j4 > /dev/null
echo '>>>>> Installing kernel...'
sudo make install
echo '>>>>> Installing modules...'
sudo make modules_install
echo '>>>>> Updating initramfs...'
sudo update-initramfs -c -k 3.2.1-MWG+
echo '>>>>> Cleaning up...'
sudo rm /boot/*.old
echo '>>>>> Building memallocator test program...'
gcc ../memallocator/memallocator.c -o ../memallocator/memallocator
echo '>>>>> Done!'
