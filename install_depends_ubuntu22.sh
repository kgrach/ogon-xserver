# часть пакетов уже удалена из основного репозитория Ubuntu 22. Нужно подключить подключить репозиторий от Ubuntu 20.
# /etc/apt/sources.list нужно добавить строки
# deb http://mirror.docker.ru/ubuntu/ focal main
# deb http://mirror.docker.ru/ubuntu/ focal-updates main
# и сделать apt update

sudo add-apt-repository 'deb [arch=amd64] http://ru.archive.ubuntu.com/ubuntu/ focal main' 

sudo apt install -y autoconf automake xutils-dev libtool libpixman-1-dev x11proto-bigreqs-dev x11proto-composite-dev \
		    x11proto-dri3-dev x11proto-present-dev x11proto-resource-dev x11proto-scrnsaver-dev x11proto-fonts-dev \
		    x11proto-xf86dri-dev x11proto-xcmisc-dev x11proto-record-dev xfonts-utils x11-xkb-utils libxfont-dev \
		    freeglut3-dev mesa-common-dev

git clone git://anongit.freedesktop.org/xorg/lib/libxtrans -b xtrans-1.3.5
cd libxtrans && mkdir -p output && cd output
../autogen.sh --prefix=/opt/ogon
make && sudo make install
cd ../..
         
