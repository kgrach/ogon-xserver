cat /etc/*release | grep 'DISTRIB_RELEASE=22.04' &> /dev/null

if [ $? == 0 ]; then
   sudo add-apt-repository 'deb [arch=amd64] http://ru.archive.ubuntu.com/ubuntu focal main'
   sudo apt update
fi

sudo apt install -y autoconf automake xutils-dev libtool libpixman-1-dev x11proto-bigreqs-dev x11proto-composite-dev \
		    x11proto-dri3-dev x11proto-present-dev x11proto-resource-dev x11proto-scrnsaver-dev x11proto-fonts-dev \
		    x11proto-xf86dri-dev x11proto-xcmisc-dev x11proto-record-dev xfonts-utils x11-xkb-utils libxfont-dev \
		    freeglut3-dev mesa-common-dev

sudo apt install -y libfontenc-dev

git clone https://gitlab.freedesktop.org/xorg/lib/libxfont.git --branch libXfont-1.5-branch
cd libxfont/ && mkdir -p output && cd output
../autogen.sh --prefix=/opt/ogon
make && sudo make install
cd ../..         
