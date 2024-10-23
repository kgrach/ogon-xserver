# часть пакетов уже удалена из основного репозитория Ubuntu 22. Нужно подключить подключить репозиторий от Ubuntu 20.
# /etc/apt/sources.list нужно добавить строки
# deb http://mirror.docker.ru/ubuntu/ focal main
# deb http://mirror.docker.ru/ubuntu/ focal-updates main
# и сделать apt update

sudo apt install autoconf automake xutils-dev libtool libpixman-1-dev x11proto-bigreqs-dev x11proto-composite-dev \
		 x11proto-dri3-dev x11proto-present-dev x11proto-resource-dev x11proto-scrnsaver-dev x11proto-fonts-dev \
		 x11proto-xf86dri-dev x11proto-xcmisc-dev x11proto-record-dev xfonts-utils x11-xkb-utils libxfont-dev
         
