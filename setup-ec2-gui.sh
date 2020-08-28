#!/bin/bash

#echo 'ubuntu:korea123!!' | chpasswd
sudo -S sh -c 'echo "ubuntu:korea123!!" | chpasswd'
sudo usermod -aG docker ubuntu

echo "deb https://packagecloud.io/firstlookmedia/code/ubuntu/ bionic main" | sudo tee -a /etc/apt/sources.list.d/firstlookmedia_code.list
curl -L https://packagecloud.io/firstlookmedia/code/gpgkey | sudo apt-key add -

sudo apt-get update
sudo apt-get install -y ubuntu-desktop xrdp curl gnupg apt-transport-https dangerzone
pip install Flask

