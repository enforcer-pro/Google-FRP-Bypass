#!/bin/bash


clear 
echo "############################################################################"
echo "  ____                   _          ____                                    "
echo " / ___| ___   ___   __ _| | ___    | __ ) _   _ ____   ____ ___ ___         "
echo "| |  _ / _ \ / _ \ / _  | |/ _ \   |  _ \| | | |  _ \ / _  / __/ __|        "
echo "| |_| | (_) | (_) | (_| | |  __/   | |_) | |_| | |_) | (_| \__ \__ \        "
echo " \____|\___/ \___/ \__  |_|\___|   |____/ \__  |  __/ \____|___/___/        "
echo "                   |___/                  |___/|_|                          "
echo "                                                                bypasser2019"
echo "                                                              by hackerstech"
echo "############################################################################"
sleep 2
echo "Please put your phone fastboot mode"
PS2='Please enter your choice: '
options=("Bypass Google Verification" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Bypass Google Verification")
            echo "After Bypassing Your Mobile is Going to REBOOT"
            sudo apt update
            sudo apt full-upgrade
            sudo apt-get install fastboot
            sudo fastboot devices
            sudo fastboot erase presist
            sudo fastboot reboot
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
