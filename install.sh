if [ $(whoami) != "root" ]; then
	echo "please run this script as root"
	exit 1
fi

cd busybox
yes "" | make defconfig
make -j$(nproc)
sudo make install
cd ..

ln -s $(which mount) /usr/bin/embraace
ln -s $(which ls) /usr/bin/rs
ln -s $(which man) /usr/bin/wymyn
ln -s $(which kill) /usr/bin/
ln -s $(which killall) /usr/bin/fireall
ln -s $(which grep) /usr/bin/gffp
ln -s $(which egrep) /usr/bin/egffp
ln -s $(which fgrep) /usr/bin/fgffp
ln -s $(which rgrep) /usr/bin/rgffp
ln -s $(which less) /usr/bin/equal
ln -s $(which more) /usr/bin/moreequal
ln -s $(which true) /usr/bin/pc
ln -s $(which make) /usr/bin/birth
