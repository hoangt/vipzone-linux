echo '>>>>> Setting up atombuild dir...'
rm -rf ~/Dropbox/mwg_research/atombuild
mkdir ~/Dropbox/mwg_research/atombuild
echo '>>>>> Copying build...'
cp arch/x86_64/boot/bzImage ~/Dropbox/mwg_research/atombuild/bzImage-MWG
cp System.map ~/Dropbox/mwg_research/atombuild/System.map-MWG
cp .config ~/Dropbox/mwg_research/atombuild/.config-MWG
echo '>>>>> Copying modules...'
make modules_install INSTALL_MOD_PATH='/home/mark/kerneldev'
rm ~/kerneldev/lib/modules/3.2.1-MWG+/build
rm ~/kerneldev/lib/modules/3.2.1-MWG+/source
cp -R ~/kerneldev/lib/modules/ ~/Dropbox/mwg_research/atombuild/
mv ~/Dropbox/mwg_research/atombuild/modules/ ~/Dropbox/mwg_research/atombuild/modules-MWG/
rm -rf ~/kerneldev/lib
echo '>>>>> Copying vanilla build...'
cp ../linux-3.2.1-vanilla/arch/x86_64/boot/bzImage ~/Dropbox/mwg_research/atombuild/bzImage-vanilla
cp ../linux-3.2.1-vanilla/System.map ~/Dropbox/mwg_research/atombuild/System.map-vanilla
cp ../linux-3.2.1-vanilla/.config ~/Dropbox/mwg_research/atombuild/.config-vanilla
echo '>>>>> Copying vanilla modules...'
cd ../linux-3.2.1-vanilla/
make modules_install INSTALL_MOD_PATH='/home/mark/kerneldev'
rm ~/kerneldev/lib/modules/3.2.1-MWG+/build
rm ~/kerneldev/lib/modules/3.2.1-MWG+/source
cp -R ~/kerneldev/lib/modules/ ~/Dropbox/mwg_research/atombuild/
mv ~/Dropbox/mwg_research/atombuild/modules/ ~/Dropbox/mwg_research/atombuild/modules-vanilla/
rm -rf ~/kerneldev/lib
cd ../linux-3.2.1-MWG/
echo '>>>>> Copying install script...'
cp atom_install.sh ~/Dropbox/mwg_research/atombuild/
cp atom_install_vanilla.sh ~/Dropbox/mwg_research/atombuild/
echo '>>>>> Compiling and copying memallocator test program...'
gcc ../memallocator/memallocator.c -o ../memallocator/memallocator
cp ../memallocator/memallocator ~/Dropbox/mwg_research/atombuild/
echo '>>>>> Done!'
