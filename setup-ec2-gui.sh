#!/bin/bash

echo -e "korea123!!" | passwd ubuntu

sudo apt-get update
sudo apt-get install -y ubuntu-desktop xrdp curl gnupg apt-transport-https
curl -L https://packagecloud.io/firstlookmedia/code/gpgkey | sudo apt-key add -
echo "deb https://packagecloud.io/firstlookmedia/code/ubuntu/ bionic main" | sudo tee -a /etc/apt/sources.list.d/firstlookmedia_code.list

sudo apt-get update
sudo apt install -y dangerzone
