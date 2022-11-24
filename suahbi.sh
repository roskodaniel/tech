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

echo "                                                         ";
echo ">>>>>>>>>>>>>>>>   INSTALLING  NODE-RED   <<<<<<<<<<<<<<<";
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
echo ">>>>>>>>>>>>>>>>   INSTALLING  NODE-RED   <<<<<<<<<<<<<<<";
echo "                                                         ";


bash <(curl -sL https://raw.githubusercontent.com/node-red/linux-installers/master/deb/update-nodejs-and-nodered)
sudo systemctl enable nodered.service

echo "                                                         ";
echo ">>>>>>>>>>>>>>>>>>   INSTALLING  MQTT   <<<<<<<<<<<<<<<<<";
echo "  ___ _   _ ____ _____  _    _     _     ___ _   _  ____ ";
echo " |_ _| \ | / ___|_   _|/ \  | |   | |   |_ _| \ | |/ ___|";
echo "  | ||  \| \___ \ | | / _ \ | |   | |    | ||  \| | |  _ ";
echo "  | || |\  |___) || |/ ___ \| |___| |___ | || |\  | |_| |";
echo " |___|_| \_|____/ |_/_/   \_\_____|_____|___|_| \_|\____|";
echo "                 __  __  ___ _____ _____                 ";
echo "                |  \/  |/ _ \_   _|_   _|                ";
echo "                | |\/| | | | || |   | |                  ";
echo "                | |  | | |_| || |   | |                  ";
echo "                |_|  |_|\__\_\|_|   |_|                  ";
echo "                                                         ";
echo ">>>>>>>>>>>>>>>>>>   INSTALLING  MQTT   <<<<<<<<<<<<<<<<<";
echo "                                                         ";
sudo apt-get install mosquitto -y

sudo apt-get install mosquitto-clients -y

cat > /etc/mosquitto/mosquitto.conf <<EOL

# Place your local configuration in /etc/mosquitto/conf.d/
# A full description of the configuration file is at
# /usr/share/doc/mosquitto/examples/mosquitto.conf.example

pid_file /run/mosquitto/mosquitto.pid

persistence true

persistence_location /var/lib/mosquitto/

log_dest file /var/log/mosquitto/mosquitto.log

include_dir /etc/mosquitto/conf.d

allow_anonymous true

EOL

echo "                                                         ";
echo ">>>>>>>>>>>>>   INSTALLING  ZIGBEE TO MQTT   <<<<<<<<<<<<";
echo "  ___ _   _ ____ _____  _    _     _     ___ _   _  ____ ";
echo " |_ _| \ | / ___|_   _|/ \  | |   | |   |_ _| \ | |/ ___|";
echo "  | ||  \| \___ \ | | / _ \ | |   | |    | ||  \| | |  _ ";
echo "  | || |\  |___) || |/ ___ \| |___| |___ | || |\  | |_| |";
echo " |___|_| \_|____/ |_/_/   \_\_____|_____|___|_| \_|\____|";
echo "                   _________  __  __                     ";
echo "                  |__  /___ \|  \/  |                    ";
echo "                    / /  __) | |\/| |                    ";
echo "                   / /_ / __/| |  | |                    ";
echo "                  /____|_____|_|  |_|                    ";
echo "                                                         ";
echo ">>>>>>>>>>>>>   INSTALLING  ZIGBEE TO MQTT   <<<<<<<<<<<<";
echo "                                                         ";
# Z2M setup
sudo git clone https://github.com/Koenkk/zigbee2mqtt.git /opt/zigbee2mqtt
cd /opt/zigbee2mqtt
git fetch
git checkout dev
git pull
npm ci
sudo chown -R pi:pi /opt/zigbee2mqtt
cat > /opt/zigbee2mqtt/data/configuration.yaml <<EOL
# Home Assistant integration (MQTT discovery)
homeassistant: false
# allow new devices to join
permit_join: true
# MQTT settings
mqtt:
  # MQTT base topic for Zigbee2MQTT MQTT messages
  base_topic: zigbee2mqtt
  # MQTT server URL
  server: 'mqtt://192.168.8.169:1883'
  # MQTT server authentication, uncomment if required:
  # user: mqtt
  # password: mqtt
# Serial settings
serial:
  # Location of the adapter (see first step of this guide)
  port: /dev/ttyUSB0
frontend:
  # Optional, default 8080 or you can use your own as well.
  port: 8080
  # IP address of the device running Zigbee2MQTT
  host: 192.168.8.169
advanced:
  log_level: debug
  network_key: GENERATE
EOL
cat > /etc/systemd/system/zigbee2mqtt.service <<EOL
[Unit]
Description=zigbee2mqtt
After=network.target
[Service]
ExecStart=npm start
WorkingDirectory=/opt/zigbee2mqtt
StandardOutput=inherit
# Or use StandardOutput=null if you don't want Zigbee2MQTT messages filling syslog, for more options see systemd.exec(5)
StandardError=inherit
Restart=always
User=pi
[Install]
WantedBy=multi-user.target
EOL
sudo systemctl enable zigbee2mqtt.service

echo " "
echo ">>>>>>>>>>>>>>> <<<<<<<<<<<<<<<";
echo "  ____   ___  ____ _____ ____  ";
echo " |  _ \ / _ \|  _ \_   _/ ___| ";
echo " | |_) | | | | |_) || | \___ \ ";
echo " |  __/| |_| |  _ < | |  ___) |";
echo " |_|    \___/|_| \_\|_| |____/ ";
echo " "
echo ">>>>>>>>>>>>>>> <<<<<<<<<<<<<<<";
echo " "
echo "Raspberry IP:"
hostname -I
echo "====================="
echo "Homebridge Port: 8581"
echo "====================="
echo " NODE-RED ddsadasdsd
echo "====================="
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
