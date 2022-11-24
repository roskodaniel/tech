#!/bin/bash

#System Update And HomeBridge Install

echo "                                               ";
echo ">>>>>>>>>>>>>   UPDATING RASPBERRY <<<<<<<<<<<<";
echo "  _   _ ____  ____    _  _____ ___ _   _  ____ ";
echo " | | | |  _ \|  _ \  / \|_   _|_ _| \ | |/ ___|";
echo " | | | | |_) | | | |/ _ \ | |  | ||  \| | |  _ ";
echo " | |_| |  __/| |_| / ___ \| |  | || |\  | |_| |";
echo "  \___/|_|   |____/_/   \_\_| |___|_| \_|\____|";
echo "                                               ";
echo ">>>>>>>>>>>>>   UPDATING RASPBERRY <<<<<<<<<<<<";
echo "                                               "; 


sudo apt update && sudo apt full-upgrade -y

echo "                                                             ";
echo ">>>>>>>>>>>>>>>>>   INSTALLING  HOMEBRIDGE   <<<<<<<<<<<<<<<<";
echo "    ___ _   _ ____ _____  _    _     _     ___ _   _  ____   ";
echo "   |_ _| \ | / ___|_   _|/ \  | |   | |   |_ _| \ | |/ ___|  ";
echo "    | ||  \| \___ \ | | / _ \ | |   | |    | ||  \| | |  _   ";
echo "    | || |\  |___) || |/ ___ \| |___| |___ | || |\  | |_| |  ";
echo "   |___|_| \_|____/ |_/_/   \_\_____|_____|___|_| \_|\____|  ";
echo "  _   _  ___  __  __ _____ ____  ____  ___ ____   ____ _____ ";
echo " | | | |/ _ \|  \/  | ____| __ )|  _ \|_ _|  _ \ / ___| ____|";
echo " | |_| | | | | |\/| |  _| |  _ \| |_) || || | | | |  _|  _|  ";
echo " |  _  | |_| | |  | | |___| |_) |  _ < | || |_| | |_| | |___ ";
echo " |_| |_|\___/|_|  |_|_____|____/|_| \_\___|____/ \____|_____|";
echo "                                                             ";
echo ">>>>>>>>>>>>>>>>>   INSTALLING  HOMEBRIDGE   <<<<<<<<<<<<<<<<";
echo "                                                             ";


sudo apt remove node
sudo apt remove nodejs
curl -sSfL https://repo.homebridge.io/KEY.gpg | sudo gpg --dearmor | sudo tee /usr/share/keyrings/homebridge.gpg  > /dev/null
echo "deb [signed-by=/usr/share/keyrings/homebridge.gpg] https://repo.homebridge.io stable main" | sudo tee /etc/apt/sources.list.d/homebridge.list > /dev/null
sudo apt-get update
sudo apt-get install homebridge -y

echo "  ___ _   _ ____ _____  _    _     _     ___ _   _  ____ ";
echo " |_ _| \ | / ___|_   _|/ \  | |   | |   |_ _| \ | |/ ___|";
echo "  | ||  \| \___ \ | | / _ \ | |   | |    | ||  \| | |  _ ";
echo "  | || |\  |___) || |/ ___ \| |___| |___ | || |\  | |_| |";
echo " |___|_| \_|____/ |_/_/   \_\_____|_____|___|_| \_|\____|";
echo "   _   _  ___  ____  _____           ____  _____ ____    ";
echo "  | \ | |/ _ \|  _ \| ____|         |  _ \| ____|  _ \   ";
echo "  |  \| | | | | | | |  _|    _____  | |_) |  _| | | | |  ";
echo "  | |\  | |_| | |_| | |___  |_____| |  _ <| |___| |_| |  ";
echo "  |_| \_|\___/|____/|_____|         |_| \_\_____|____/   ";
echo "                                                         ";

bash <(curl -sL https://raw.githubusercontent.com/node-red/linux-installers/master/deb/update-nodejs-and-nodered) -y
sudo systemctl enable nodered.service

echo "                                                          ";
echo ">>>>>>>>   UPDATE & INSTALL FINISHED, RESTARTNG   <<<<<<<<";
echo "  ____  _____ ____ _____  _    ____ _____ ___ _   _  ____ ";
echo " |  _ \| ____/ ___|_   _|/ \  |  _ \_   _|_ _| \ | |/ ___|";
echo " | |_) |  _| \___ \ | | / _ \ | |_) || |  | ||  \| | |  _ ";
echo " |  _ <| |___ ___) || |/ ___ \|  _ < | |  | || |\  | |_| |";
echo " |_| \_\_____|____/ |_/_/   \_\_| \_\|_| |___|_| \_|\____|";
echo "                                                          ";
echo ">>>>>>>>   UPDATE & INSTALL FINISHED, RESTARTNG   <<<<<<<<";
echo "                                                          ";


sudo reboot
