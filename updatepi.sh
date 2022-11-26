#!/bin/bash
echo " ";
echo "====================    Welcome to    ====================";
echo "  ____      _    ____  ____  ____  _____ ____  ______   __";
echo " |  _ \    / \  / ___||  _ \| __ )| ____|  _ \|  _ \ \ / /";
echo " | |_) |  / _ \ \___ \| |_) |  _ \|  _| | |_) | |_) \ V / ";
echo " |  _ <  / ___ \ ___) |  __/| |_) | |___|  _ <|  _ < | |  ";
echo " |_| \_\/_/   \_\____/|_|   |____/|_____|_| \_\_| \_\|_|  ";
echo " ";
echo "======================   Updater  ========================";
echo " ";
echo ">>> Updating Raspberry <<<";
echo " ";
sudo apt update && sudo apt full-upgrade -y
echo " ";
echo ">>> Raspberry Ready <<<";
echo " ";
echo ">>> Rebooting Raspberry <<<";
echo " ";
echo " ";
echo "Thank you for using our updater script!"
echo ">>  github.com/roskodaniel"
echo ">>  fiverr.com/daniel_rosko"
sudo reboot

fasz
