#!/bin/bash
# run this script to get wifi working on a clean debian install
# I haven't testing it yet, but next time I clean install debian I'll give it a shot

echo "deb http://http.debian.net/debian/ jessie main contrib non-free" >> /etc/apt/sources.list;

apt-get update && apt-get install firmware-iwlwifi;

apt-get install wireless-tools;

# apt-get install firmware-ipw2x00;
# modprobe -r ipw2200;
# modprobe ipw2200;

modprobe -r iwlwifi;
modprobe iwlwifi;
apt-get install netowrk-manager network-manager-gnome;
apt-get dist-upgrade;
apt-get autoclean;
apt-get autoremove;
