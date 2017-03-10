FROM ubuntu:16.10

RUN apt-get update &&\
    apt-get install -y git-core build-essential libssl-dev libncurses5-dev unzip gawk zlib1g-dev \
                       mercurial subversion gcc-multilib sudo \
                       libncurses5-dev zlib1g-dev gawk flex gettext wget unzip python &&\
    apt-get clean &&\
    useradd -m openwrt &&\
    echo 'openwrt ALL=NOPASSWD: ALL' > /etc/sudoers.d/openwrt &&\
    sudo -iu openwrt git clone -b chaos_calmer git://github.com/openwrt/openwrt.git &&\
    sudo -iu openwrt openwrt/scripts/feeds update

