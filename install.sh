#!/bin/bash
# File : install.sh
# Author : ruihq <ruihq.gh@gmail.com>
# License : MIT License

function install() {
    if [ -f "main" ]; then
        cp main $HOME
        cd $HOME
        mv main calcul
        chmod +x calcul
        mv calcul ../usr/bin
        cd ../usr/bin
        mv calcul calcu
        cd $HOME
        sleep 0.5
        echo "[+] Installed command calculator."
        echo "Run calculator using command 'calcu'"
    else
        echo "ERROR: ERRCODE 01 - Package not found."
    fi
}

function main() {
    echo "[+] Install calculator by ruihq? y/n"
    read ans
    
    if [ $ans == "y" ]
    then
        install
    elif [ $ans == "n" ]
    then
        echo Declined.
    else
        echo Invalid option.
        sleep 0.5
        clear
        main
    fi
}

main