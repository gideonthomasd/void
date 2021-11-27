#!/bin/bash

sudo xbps-remove firefox-esr
sudo xbps-install -Su void-repo-nonfree
sudo xbps-install -Su void-repo-multilib
sudo xbps-install -Su void-repo-multilib-nonfree
sudo xbps-install -Su
sudo xbps-install font-iosevka plank xcompmgr feh firefox geany pcmanfm Thunar thunar-volman thunar-archive-plugin xarchiver unzip xdo base-devel arandr lxsession lxappearance git dmenu rofi neofetch xterm xfce4-whiskermenu-plugin 
sudo xbps-install xed lxtask xdg-utils pavucontrol pulseaudio volumeicon gmrun gvfs yaru-plus nerd-fonts-ttf ntfs-3g font-awesome sxhkd mpv vlc youtube-dl yt-dlp bspwm cronie i3lock-fancy lxdm-theme-vdojo
sudo xbps-install openbox obconf tint2 obmenu-generator nitrogen flatpak lxterminal gparted pulsemixer htop i3-gaps i3blocks sxiv xdotool trayer-srg htop moc xmonad xmonad-contrib xmobar picom brother-brlaser cups cups-filters
sudo xbps-install xfce4-appfinder blueman xfce4-terminal polybar timeshift base-devel libX11-devel libXft-devel libXinerama-devel noto-fonts-ttf rofi nano vim bumblebee-status bspwm curl gsimplecal-gtk2 jgmenu unrar sabnzbd
#nerd-fonts-source-code-pro
#arcolinux-candy-beauty-git
#leftwm-theme-git
#sddm
#arcolinux-tweak-tool-git
#appimagelauncher

#pulseaudio-bluetooth

#gtk2-perl
#lsb-release
#jgmenu - works but...

#awesome-terminal-fonts
#ttf-font-awesome

#xdotool
#pacman-contrib


#linux-lts
#linux-lts-headers


#qtile


#leftwm
