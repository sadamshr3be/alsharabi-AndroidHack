#!/bin/bash
clear
echo -e "         \e[91m\e[1m   _____  ______          ________ ____  _  _______ _______  "
echo "      /\   |  __ \|  _ \ \        / /  ____|  _ \| |/ /_   _|__   __|"
echo "     /  \  | |  | | |_) \ \  /\  / /| |__  | |_) | ' /  | |    | |   "
echo "    / /\ \ | |  | |  _ < \ \/  \/ / |  __| |  _ <|  <   | |    | |   "
echo "   / ____ \| |__| | |_) | \  /\  /  | |____| |_) | . \ _| |_   | |   "
echo "  /_/    \_\_____/|____/   \/  \/   |______|____/|_|\_\_____|  |_|  v1 "
echo ""
echo -e "            \e[93m Author: https://github.com/sadamshr3be/alsharabi-AndroidHack"
echo ""
echo -e "\e[91m[\e[92m1\e[91m] \e[36mInstall Dependency And ADBWEBKIT"
echo -e "\e[91m[\e[92m2\e[91m] \e[36mRun ADBWEBKIT"
echo -e "\e[91m[\e[92m3\e[91m] \e[36mStop ADBWEBKIT"
echo -e "\e[97m"
read -p "select : " option

if [ $option -eq "1" ];then
clear
pkg update && pkg upgrade
if ! command -v adb &> /dev/null
then
    pkg install android-tools
    exit
fi
if ! command -v php &> /dev/null
then
    pkg install php
    exit
fi
if ! command -v git &> /dev/null
then
    pkg install git
    exit
fi
if [ -d "$HOME/adbwebkit" ] 
then
clear
    echo "Install Finish" 
else
    git clone https://github.com/sadamshr3be/alsharabi-AndroidHack
fi
fi
if [ $option -eq "2" ];then
clear
read -p "Enter Port Number : " port
php -S  127.0.0.1:$port -t "$HOME/alsharabi-AndroidHack"&
termux-open-url http://127.0.0.1:$port 
fi
if [ $option -eq "3" ];then
killall php
clear
echo "Stop ADBWEBKIT ):"
fi

