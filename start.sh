#!/bin/bash

yum install git wget -y
#  uyun set hostname 
while :; do echo
  read -p "Please input Server Code(Default: S1): " SV_CODE
  [ -z "$SV_CODE" ] && SV_CODE=S1
  hostname $SV_CODE
  hostnamectl set-hostname $SV_CODE
  break
done

# uyun Genthe key
if [ ! -f "/root/.ssh/id_rsa.pub" ]; then
  ssh-keygen -t rsa -C "$SV_CODE@server.tedx.net"
fi

# uyun get access for git
while :; do echo
  echo  -e "Open https://coding.net/u/lyhiving/p/vps/setting/deploy_key/new \nPlease upload the pubkey Below "
  cat /root/.ssh/id_rsa.pub
  read -p "Please input any keys to continue " PUB_UPLOAD
  [ -z "$PUB_UPLOAD" ] && PUB_UPLOAD=
    break
done

if [ ! -d "/data/vps/_auto_" ]; then
  mkdir -p /data/vps
  cd /data/vps
  git  clone git@git.coding.net:lyhiving/vps.git ./
fi
if [ ! -d "/data/vps/_auto_" ]; then
  "${CWARNING}You Must get the git code to continue${CEND}"
  exit 1;
fi

mkdir /root/__ORG__/
cd /root/__ORG__/
if [ ! -d "/root/__ORG__/oneinstack" ]; then
  wget d.tedx.net/vps/_old_/dl/oneinstack-full.tar.gz  --no-check-certificate
  tar zxvf oneinstack-full.tar.gz
fi
if [ ! -d "/root/__ORG__/oneinstack" ]; then
  "You Must get the git code to continue"
  exit 1;
fi
cd /root/__ORG__/oneinstack
rm -rf full.sh
wget  d.tedx.net/vps/full.sh -O full.sh
chmod a+x ./full.sh
./full.sh 2>&1 | tee -a full.log
