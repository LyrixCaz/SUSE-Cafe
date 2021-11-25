#!/bin/sh
#Index
BROWN='\033[0;33m'
RED='\033[0;31m'
WHITE='\e[1;37m'

#General
printf "%b\n" "${WHITE}---------------------"
printf "%b\n" "${BROWN}Installing SUSE Café..."
printf "%b\n" "${WHITE}---------------------"
mkdir -p $HOME/.local/share/color-schemes
mkdir -p $HOME/.local/share/konsole
cp ./SUSECafe.colors $HOME/.local/share/color-schemes/
cp ./SUSEKafe.colorscheme $HOME/.local/share/konsole/
sleep 1

#Papirus Download
printf "%b\n" "${BROWN}Setting Papirus..."
sleep 2

if [ "$(ls /bin/|grep -x zypper)" = "zypper" ] ||
   [ "$(ls /bin/|grep -x dnf)" = "dnf" ] ||
   [ "$(ls /bin/|grep -x pacman)" = "pacman" ] ||
   [ "$(ls /bin/|grep -x apt)" = "apt" ]; then
    sudo zypper in -yf papirus-icon-theme papirus-folders
#|| sudo pacman -S papirus-icon-theme papirus-folders --noconfirm

#Papirus Setup
    printf "%b\n" "${BROWN}Setting up nordic colors"
    sudo papirus-folders -C nordic -t ePapirus
    sudo papirus-folders -C nordic -t Papirus
    sudo papirus-folders -C nordic -t Papirus-Light
    sudo papirus-folders -C nordic -t Papirus-Dark
    printf "%b\n" "${RED}Have a lot of fun..."
    sleep 2
    printf "%b\n" "${WHITE}Now go & apply!"

else
    printf "%b\n" ${RED}"Shenanigans, shenanigans,shenanigans!!"
    sleep 2
    #Exit
    printf "%b\n" "${BROWN}Didn't find zypper :("
    sleep 1
    printf "%b\n" "${WHITE}Go & apply the colors!"
fi
