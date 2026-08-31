#!/bin/bash

apt update

apt install -y \
linux-headers-generic \
pipewire-audio \
pipewire-audio-client-libraries \
pipewire-libcamera \
pipewire-v4l2 \
gstreamer1.0-pipewire \
alsa-firmware-loaders \
alsa-tools \
alsa-utils \
alsa-topology-conf \
alsa-ucm-conf \
libasound2-plugins \
ubuntu-restricted-extras \
libavcodec-extra \
gstreamer1.0-plugins-* \
ffmpeg \
mesa-vulkan-drivers \
mesa-va-drivers \
libgl1-mesa-dri \
libglx-mesa0 \
mesa-utils \
libvulkan1 \
vulkan-tools \
switcheroo-control \
curl \
qbittorrent \
audacious \
audacious-plugins \
gnome-sound-recorder \
smplayer \
smplayer-themes \
fuse3 \
libfuse2 \
unzip \
p7zip-full \
rar \
unrar \
tar \
gzip \
bzip2 \
xz-utils \
file-roller \
gimp \
gimp-help-hu \
shotwell \
gnome-screenshot \
gnome-calculator \
gnome-disk-utility \
gnome-system-monitor \
geany \
geany-plugins \
evince \
vainfo \
moreutils \
net-tools \
wimtools \
lm-sensors \
psensor \
thermald \
power-profiles-daemon \
rfkill \
stress \
inxi \
dmidecode \
smartmontools \
htop \
cups \
system-config-printer \
printer-driver-all \
printer-driver-cups-pdf \
xsane \
libsane1 \
sane-utils \
simple-scan \
avahi-daemon \
avahi-utils \
libnss-mdns \
avahi-autoipd \
bluez \
bluez-tools \
bluez-firmware \
bluez-cups \
bluez-obexd \
libspa-0.2-bluetooth \
blueman \
ufw \
gufw \
fonts-dejavu \
fonts-liberation \
fonts-noto-core \
bibata-cursor-theme

sed -i 's/#AutoEnable=true/AutoEnable=true/' /etc/bluetooth/main.conf
systemctl enable --now switcheroo-control.service

apt autoremove --purge -y
apt autoclean
apt clean

echo 'A TELEPÍTÉS BEFEJEZŐDÖTT. KÉREM, HOGY INDÍTSA ÚJRA A SZÁMÍTÓGÉPÉT!'
