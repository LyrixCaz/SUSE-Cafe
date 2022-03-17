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
mkdir -p $HOME/.fonts

wget -P $HOME/.fonts https://fonts.google.com/download?family=Poppins
unzip $HOME/.fonts/download?family=Poppins -d $HOME/.fonts/Poppins
rm -rf $HOME/.fonts/download?family=Poppins

cp ./SUSECafe.colors $HOME/.local/share/color-schemes/
cp ./SUSEKafe.colorscheme $HOME/.local/share/konsole/

sleep 1
printf "%b\n" "${RED}Have a lot of fun..."
