#!/bin/bash
sudo apt-get install python-setuptools;
sudo easy_install pip
sudo apt-get update

if [ ! -z "$(which pip)" ]; then
	sudo pip install virtualenv;
fi
