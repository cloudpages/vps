#!/bin/bash
export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin
clear
# Check if user is root
[ $(id -u) != "0" ] && { echo "${CFAILURE}Error: You must be root to run this script${CEND}"; exit 1; }

wget -O oneinstack.tar.gz http://d.tedx.net/vps/oneinstack.tar.gz
tar zxvf oneinstack.tar.gz
cd oneinstack
bash setup.sh --opts "${@}"