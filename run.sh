#!/bin/bash
# run the installation scripts

if ! [ $(id -u) = 0 ]; then
   echo "This program must be run as root."
   echo "remember to chmod 755 this script :)"
   exit 1
fi

./wifi.sh;
./python.sh;
./node.sh;
