#!/bin/bash
# Update Script for PowerLevel10K v2.1-Stable
# Script created by @sivaprasad123


dependencies() {

command -v git > /dev/null 2>&1 || { echo >&2 "Package GIT is not installed ... Unable to update ..."; exit 1; }

}

script() {

clear
printf "\n \e[1;92mUpdating \e[1;94mtermux-welcome-page\e[1;92m ...\n\n"
sleep 1.5
cd ..
rm -rf termux-welcome-page
git clone https://github.com/R0OTBYTE/termux-welcome-page
cd termux-welcome-page
printf "\n\e[1;92mRestarting ...\n\e[0m"
bash install.sh
clear
cd ..
figlet DONE | lolcat
exit
}

dependencies
script

     
