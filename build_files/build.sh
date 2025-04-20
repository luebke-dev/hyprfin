#!/bin/bash

set -ouex pipefail


# enable copr-repos for fresher hyprland builds
dnf5 -y copr enable solopasha/hyprland
dnf5 -y copr enable azandure/clipse
dnf5 -y copr enable errornointernet/walker
dnf5 -y copr enable ublue-os/staging
dnf5 -y copr enable ublue-os/packages 

# Add packages from solopasha here
dnf5 -y install hyprland
dnf5 -y install xdg-desktop-portal-hyprland
dnf5 -y install hyprpolkitagent # has to be started via exec-once
dnf5 -y install swww # wallpaper, with animation support
dnf5 -y install waypaper # GUI wallpaper manager for many backends
dnf5 -y install hyprpicker # don't think I'll need a color picker, but who knows
dnf5 -y install hyprlock # lockscreen
dnf5 -y install hypridle # idle daemon TODO find out how to use it
dnf5 -y install hyprsunset # TODO read docs and configure
# dnf5 -y install hyprcursor # TODO seems complicated and useless, but somewhat cool
dnf5 -y install hyprland-plugins # TODO there seems to be some nice stuff
dnf5 -y install hyprnome # workspace switching like in my beloved gnome
dnf5 -y install uwsm # needed to start hyprland via systemd
dnf5 -y install hyprshot #screenshot
dnf5 -y install clipse # Clipboard-Manager - TODO see the clipse GitHub for hyprland instructions

dnf5 -y install walker # cool application launcher
dnf5 -y install ublue-brew
dnf5 -y install ptyxis # my favorite terminal emu
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
dnf -y install kitty # default terminal on hyprland
dnf -y install dunst # notification daemon
dnf -y install pipewire wireplumber # needed for screenshare
dnf -y install xdg-desktop-portal-gtk # needed for filepicker
dnf -y install qt5-qtwayland qt6-qtwayland # wayland support for QT
dnf -y install waybar
dnf -y install udiskie
dnf5 -y install zsh
dnf -y install nautilus
dnf -y install distrobox
dnf -y install tealdeer
