echo '>>>>> Cleaning last build...'
#make clean
echo '>>>>> Setting up atombuild dir...'
rm -rf ~/Dropbox/mwg_research/atombuild
mkdir ~/Dropbox/mwg_research/atombuild
echo '>>>>> Compiling new  kernel...'
make -j4 > /dev/null
echo '>>>>> Copying finished build...'
cp arch/x86_64/boot/bzImage ~/Dropbox/mwg_research/atombuild/
cp System.map ~/Dropbox/mwg_research/atombuild/
cp .config ~/Dropbox/mwg_research/atombuild/
echo '>>>>> Copying modules...'
make modules_install INSTALL_MOD_PATH='/home/mark/kerneldev'
rm ~/kerneldev/lib/modules/3.2.1-MWG+/build
rm ~/kerneldev/lib/modules/3.2.1-MWG+/source
cp -R ~/kerneldev/lib/modules/ ~/Dropbox/mwg_research/atombuild/
rm -rf ~/kerneldev/lib
echo '>>>>> Copying install script...'
cp atom_install.sh ~/Dropbox/mwg_research/atombuild/
echo '>>>>> Done!'