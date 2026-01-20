#!/bin/bash

#URL="https://upwork-usw2-desktopapp.upwork.com/binaries/v5_8_0_35_be1a1520901c4eef/upwork_5.8.0.35_amd64.deb"
#FILE="/tmp/upwork_amd64.deb"

#wget -q --show-progress "$URL" -O "$FILE"

wget -q --show-progress "https://upwork-usw2-desktopapp.upwork.com/binaries/v5_8_0_35_be1a1520901c4eef/upwork_5.8.0.35_amd64.deb" -O /tmp/upwork.deb

sudo apt update
sudo apt install -y /tmp/upwork.deb

rm /tmp/upwork.deb
