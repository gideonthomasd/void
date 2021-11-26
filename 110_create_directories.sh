#!/bin/bash

#if [ ! -d /usr/share/xsessions ]
#then
#sudo mkdir -p /usr/share/xsessions
#fi

############ Make sh executable #######################  padsp mocp ####### (if needed) ######################


cd bspwm
chmod +x bspwmrc
chmod +x testwallpaper
cd ..

cd polybar
chmod +x *.sh
cd scripts
chmod +x *.sh
cd ..
cd ..

cd polybar-bspwm
chmod +x *.sh
cd scripts
chmod +x *.sh
cd ..
cd ..

cd openbox
chmod +x autostart
cd ..

cd tint2
chmod +x tint2rc
chmod +x tint2-sessionfile
cd ..


#######################################################

if [ ! -d $HOME"/.config" ] 
then mkdir -p $HOME"/.config"
fi

cp -Rf ~/.config ~/.config-backup-$(date +%Y.%m.%d-%H.%M.%S)

if [ ! -d $HOME"/.config/polybar" ] 
then
mkdir -p $HOME"/.config/polybar"
fi

mkdir -p $HOME"/.config/polybar-bspwm"
mkdir -p $HOME"/.config/lxterminal"


if [ ! -d $HOME"/.config/bspwm" ]
then
mkdir -p $HOME"/.config/bspwm"
fi
#[ -d $HOME"/dwm-bar" ] || mkdir -p $HOME"/dwm-bar"

#if [ ! -d $HOME"/.dwm" ]
#then
#mkdir -p $HOME"/.dwm"
#fi

#[ -d $HOME"/.dwm" ] || mkdir -p $HOME"/.dwm"

#mkdir -p $HOME"/dwm-6.2"
#mkdir -p $HOME"/dwm-bar"
#mkdir -p $HOME"/.dwm"


if [ ! -d $HOME"/.config/rofi" ] 
then
mkdir -p $HOME"/.config/rofi"
fi

if [ ! -d $HOME"/.config/jgmenu" ]
then
mkdir -p $HOME"/.config/jgmenu"
fi

if [ ! -d $HOME"/.config/openbox" ]
then
mkdir -p $HOME"/.config/openbox"
fi

if [ ! -d $HOME"/.config/obmenu-generator" ]
then
mkdir -p $HOME"/.config/obmenu-generator"
fi

if [ ! -d $HOME"/.config/tint2" ]
then
mkdir -p $HOME"/.config/tint2"
fi

cd lxterminal
cp -r * ~/.config/lxterminal
cd ..


cd polybar
cp -r * ~/.config/polybar
cd ..

cd polybar-bspwm
cp -r * ~/.config/polybar-bspwm
cd ..

cd bspwm
cp -r * ~/.config/bspwm
cd ..

cd rofi
cp -r * ~/.config/rofi
cd ..

cd jgmenu
cp -r * ~/.config/jgmenu
cd ..

cd openbox
cp -r * ~/.config/openbox
cd ..

cd obmenu-generator
cp -r * ~/.config/obmenu-generator
cd ..

cd tint2
cp -r * ~/.config/tint2
cd ..

mv ~/.bashrc ~/.bashrc-$(date +%Y.%m.%d-%H.%M.%S)
cp bashrc ~/.bashrc

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

#### Install i3 ##########################
mkdir -p ~/.config/i3
mkdir -p ~/.config/i3blocks

cd i3
chmod +x testwallpaper
chmod +x *.sh
cd ..

cd i3blocks
chmod +x *.sh
cd ..

cd i3
cp -r * ~/.config/i3
cd ..

cd i3blocks
cp -r * ~/.config/i3blocks
cd ..


######## Install xmonad ##########################
#mkdir -p ~/.xmonad
#mkdir -p ~/.config/xmobar

#cd xmonad
#chmod +x autostart.sh
#chmod +x testwallpaper
#chmod +x xmonad.hs
#cd ..

#cd xmobar
#chmod +x xmobarrc
#chmod +x *.sh

#cd ..

#cd xmonad
#cp -r * ~/.xmonad
#cd ..

#cd xmobar
#cp -r * ~/.config/xmobar
#cd ..

######## Install DWM ##############################

mkdir -p ~/.local/share/dwm
sudo mkdir -p /usr/share/xsessions

mkdir -p ~/dwm-flexipatch
mkdir -p ~/slstatus

mkdir -p ~/st-transparency-scrollback

cd slstatus
chmod +x ram
cd ..

cd dwm-flexipatch
cp -r * ~/dwm-flexipatch
cd ..

cd slstatus
cp -r * ~/slstatus
cd ..

cd st-transparency-scrollback
cp -r * ~/st-transparency-scrollback
cd ..

sudo cp dwm.desktop /usr/share/xsessions/dwm.desktop
sudo cp autostart.sh ~/.local/share/dwm
sudo cp sxhkdrc ~/.local/share/dwm
cp powermenu.sh ~/powermenu.sh

mkdir -p ~/.config/plank
cd plank
cp -r * ~/.config/plank
cd ..

git clone https://gitlab.com/dwt1/shell-color-scripts.git
cd shell-color-scripts
#rm -rf /opt/shell-color-scripts
sudo mkdir -p /opt/shell-color-scripts/colorscripts
sudo cp -rf colorscripts/* /opt/shell-color-scripts/colorscripts
sudo cp colorscript.sh /usr/bin/colorscript
cd ..


##############################Install bumblebee for i3########################
#cd ~/.config/i3/bumblebee-status
#makepkg -sicr

cd ~/dwm-flexipatch
tar -xzvf patch.tar.gz
sudo make clean install

cd ~/slstatus
sudo make clean install

cd ~/st-transparency-scrollback
sudo make clean install

#########################Install bumblebee-status files - mine
cd ~/void/i3/bumblebee-status/myfiles
#sudo cp -r * /usr/share/bumblebee-status/bumblebee_status/modules/contrib
sudo cp -r * /usr/lib/python3.10/site-packages/bumblebee_status/modules/contrib
#xmonad --recompile

#cd ~/.config/leftwm/themes
#ln -s eden current

#sudo systemctl enable bluetooth
sudo ln -s /etc/sv/cupsd /var/service/

echo "SNAP: For menu entry copy /var/lib/snapd/desktop/applications to /home/phil/.local/share/applications"
echo "SNAP : From sxhkd do 'snap run brave' instead of just 'brave' "
echo "Appimage: Get appimagelauncher from releases.  Do 'appimagelauncher-lite...AppImage install' in terminal."
echo "Get Beautyline icon from gnome.  Extract and copy into /usr/share/icons."
echo "Get Prismatic theme and put in .themmes folder.  Obconf"
echo "greeter-hide-users=false  in /etc/lightdm/lightdm.conf"

#cp xprofile ~/.xprofile
#cp getSession.sh ~/getSession.sh - now inside dwm-6.2/system

#sudo cp dwm.desktop /usr/share/xsessions/dwm.desktop

##git clone  https://github.com/salman-abedin/devour.git
##cd devour
##sudo make install
##echo "All done"
##cd ..
#echo "Go to dwm6-2 and do sudo make install"


#cp -arf bspwm ~/.config/bspwm
#cp -arf sxhkd ~/.config/sxhkd
#cp -arf polybar ~/.config/polybar

#cd test2
#cd bspwm
#cp -r * ~/mythetest
#cd ..
#cd ..
#pwd
