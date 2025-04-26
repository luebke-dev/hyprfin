#!/bin/bash

set -ouex pipefail

dnf5 -y copr enable solopasha/hyprland
dnf5 -y copr enable azandure/clipse
dnf5 -y copr enable errornointernet/walker
dnf5 -y copr enable ublue-os/staging
dnf5 -y copr enable ublue-os/packages 

dnf5 -y install hyprland
dnf5 -y install xdg-desktop-portal-hyprland
dnf5 -y install hyprpolkitagent 
dnf5 -y install swww 
dnf5 -y install waypaper 
dnf5 -y install hyprpicker
dnf5 -y install hyprlock
dnf5 -y install hypridle 
dnf5 -y install hyprsunset
dnf5 -y install hyprland-plugins
dnf5 -y install uwsm
dnf5 -y install hyprshot

dnf5 -y install walker
dnf5 -y install ublue-brew
dnf5 -y install nautilus-open-any-terminal
dnf5 -y install tlp
dnf5 -y install ublue-fastfetch

# Disable copr-repos again
dnf5 -y copr disable solopasha/hyprland
dnf5 -y copr disable azandure/clipse
dnf5 -y copr disable errornointernet/walker
dnf5 -y copr disable ublue-os/staging
dnf5 -y remove nano
dnf5 -y copr enable ublue-os/packages 
dnf5 -y install flatpak-spawn fuse android-udev-rules intel-vaapi-driver
dnf -y install kitty
dnf -y install dunst
dnf -y install pipewire wireplumber
dnf -y install xdg-desktop-portal-gtk
dnf -y install qt5-qtwayland qt6-qtwayland
dnf -y install waybar
dnf -y install udiskie
dnf5 -y install zsh
dnf -y install nautilus
dnf -y install distrobox
dnf -y install tealdeer
