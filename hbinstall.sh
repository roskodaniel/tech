#!/bin/bash
echo " ";
echo "======================    Welcome to    =====================";
echo "  _   _  ___  __  __ _____ ____  ____  ___ ____   ____ _____ ";
echo " | | | |/ _ \|  \/  | ____| __ )|  _ \|_ _|  _ \ / ___| ____|";
echo " | |_| | | | | |\/| |  _| |  _ \| |_) || || | | | |  _|  _|  ";
echo " |  _  | |_| | |  | | |___| |_) |  _ < | || |_| | |_| | |___ ";
echo " |_| |_|\___/|_|  |_|_____|____/|_| \_\___|____/ \____|_____|";
echo "                                                             ";
echo "=======================   Installer  ========================";
echo " ";
echo ">>> Adding Homebridge Repository <<<";
echo " ";
curl -sSfL https://repo.homebridge.io/KEY.gpg | sudo gpg --dearmor | sudo tee /usr/share/keyrings/homebridge.gpg  > /dev/null
echo "deb [signed-by=/usr/share/keyrings/homebridge.gpg] https://repo.homebridge.io stable main" | sudo tee /etc/apt/sources.list.d/homebridge.list > /dev/null
echo " ";
echo ">>> Installing Homebridge <<<";
echo " ";
sudo apt-get update
sudo apt-get install homebridge
echo " ";
echo ">>> Homebridge Ready <<<";
echo " ";
echo " ";
echo ">>> You can reach Homebridge UI by going to <<<";
echo ">>> http://<ip address of your server>:8581 <<<";
echo "Your Server's ip is:"
hostname -I
echo " ";
echo " ";
echo "Thank you for using our installer script!"
echo ">>  github.com/roskodaniel"
echo ">>  fiverr.com/daniel_rosko"
