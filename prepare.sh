#!/bin/bash

#This script is from https://github.com/lcguida/ansible-dev-machine

set -e

if [ "$EUID" -ne 0 ]
then
  echo "Please, run this script as root (sudo)"
  exit 1
fi

echo "Installing python and ansible"
apt install python3 ansible

echo "Install ansible requirements"
ansible-galaxy install -r requirements.yml
