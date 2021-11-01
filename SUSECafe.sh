#!/bin/sh
BR='\033[0;33m'
RED='\033[0;31m'
WHT='\e[1;37m'

printf "${BR}Installing SUSE Café..."
mkdir -p $HOME/.local/share/color-schemes
mkdir -p $HOME/.local/share/konsole
cp ./SUSECafe.colors $HOME/.local/share/color-schemes/
cp ./SUSEKafe.colorscheme $HOME/.local/share/konsole/
sleep 1

printf "%b\n" "${BR}Going to fetch Papirus icons & folders"
sleep 2
sudo zypper install -yf papirus-icon-theme papirus-folders 

printf "%b\n" "${BR}Going to Set up nordic colors"
sleep 2
sudo papirus-folders -C nordic -t ePapirus
sudo papirus-folders -C nordic -t Papirus
sudo papirus-folders -C nordic -t Papirus-Light
sudo papirus-folders -C nordic -t Papirus-Dark

printf "%b\n" "${RED}Have a lot of fun..."
sleep 2
printf "%b\n" "${WHT}Now go & apply!"
