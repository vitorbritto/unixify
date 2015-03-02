#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# | MENU                                                                       |
# ------------------------------------------------------------------------------

uify_menu() {
    NORMAL=`echo "\033[m"`
    MENU=`echo "\033[36m"` #Blue
    NUMBER=`echo "\033[33m"` #yellow
    FGRED=`echo "\033[41m"`
    RED_TEXT=`echo "\033[31m"`
    ENTER_LINE=`echo "\033[33m"`
    echo -e "${MENU}*********************************************${NORMAL}"
    echo -e "${MENU}**${NUMBER} 1)${MENU} Mount dropbox ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 2)${MENU} Mount USB 500 Gig Drive ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 3)${MENU} Restart Apache ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 4)${MENU} ssh Frost TomCat Server ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 5)${MENU} ${NORMAL}"
    echo -e "${MENU}*********************************************${NORMAL}"
    echo -e "${ENTER_LINE}Please enter a menu option and enter or ${RED_TEXT}enter to exit. ${NORMAL}"
    read opt
}

option_picked() {
    COLOR='\033[01;31m' # bold red
    RESET='\033[00;00m' # normal white
    MESSAGE=$(@:-"${RESET}Error: No message passed")
    echo -e "${COLOR}${MESSAGE}${RESET}";
}

clear
uify_menu

while [ opt != '' ]
    do
    if [[ $opt = "" ]]; then
            exit;
    else
        case $opt in
        1) clear;
        option_picked "Option 1 Picked";
        sudo mount /dev/sdh1 /mnt/DropBox/; #The 3 terabyte
        menu;
        ;;

        2) clear;
            option_picked "Option 2 Picked";
            sudo mount /dev/sdi1 /mnt/usbDrive; #The 500 gig drive
        menu;
            ;;

        3) clear;
            option_picked "Option 3 Picked";
        sudo service apache2 restart;
            uify_menu;
            ;;

        4) clear;
            option_picked "Option 4 Picked";
        ssh lmesser@ -p 2010;
            uify_menu;
            ;;

        x)exit;
        ;;

        \n)exit;
        ;;

        *)clear;
        option_picked "Pick an option from the menu";
        uify_menu;
        ;;
    esac
fi
done
