#!/bin/bash

## This is the magically modified version of the one-click reload script.
## It can reinstall CentOS, Debian, Ubuntu and other Linux systems (continuously added) over the network in one click.
## It can reinstall Windwos 2003, 7, 2008R2, 2012R2, 2016, 2019 and other Windows systems (continuously added) via the network in one click.
## Technical support is provided by the technical blog. (based on the original version of Vicer)

## Magic Modify version author:
## Support GRUB or GRUB2 for installing a clean minimal system.
## Default root password: cxthhhhh.com
## Blog: https://tech.cxthhhhh.com
## Written By Technical Blog

## Original version author:
## Suitable for using by GRUB.
## Blog: https://moeclub.org
## Written By Vicer


echo -e "\n\n\n"
clear
echo -e "\n"
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[33m [Magic Modify] Reinstall the system (any Windows / Linux) requires only network and one click \033[0m"
echo -e "\033[33m System requirements: Any Linux system with GRUB or GRUB2, recommended CentOS7/Debian9/Ubuntu18.04 \033[0m"
echo -e "\033[33m Test version, not released, only for testing within the group. \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\n"
sleep 5s


if [ $1 = '-CentOS_6' ]
then
	wget --no-check-certificate -qO koiok.sh 'https://d.tedx.net/vps/koiok.sh' && bash koiok.sh -c 6.9 -v 64 -a
fi

if [ $1 = '-CentOS_7' ]
then
	wget --no-check-certificate -qO koiok.sh 'https://d.tedx.net/vps/koiok.sh' && bash koiok.sh -dd 'https://d.cao.by/os/dd/CentOS_7.X_NetInstall_AutoPartition.vhd.gz'
fi

if [ $1 = '-Debian_7' ]
then
	wget --no-check-certificate -qO koiok.sh 'https://d.tedx.net/vps/koiok.sh' && bash koiok.sh -d 7 -v 64 -a
fi

if [ $1 = '-Debian_8' ]
then
	wget --no-check-certificate -qO koiok.sh 'https://d.tedx.net/vps/koiok.sh' && bash koiok.sh -d 8 -v 64 -a
fi

if [ $1 = '-Debian_9' ]
then
	wget --no-check-certificate -qO koiok.sh 'https://d.tedx.net/vps/koiok.sh' && bash koiok.sh -d 9 -v 64 -a
fi

if [ $1 = '-Ubuntu_14.04' ]
then
	wget --no-check-certificate -qO koiok.sh 'https://d.tedx.net/vps/koiok.sh' && bash koiok.sh -u 14.04 -v 64 -a
fi

if [ $1 = '-Ubuntu_16.04' ]
then
	wget --no-check-certificate -qO koiok.sh 'https://d.tedx.net/vps/koiok.sh' && bash koiok.sh -u 16.04 -v 64 -a
fi

if [ $1 = '-Ubuntu_18.04' ]
then
	wget --no-check-certificate -qO koiok.sh 'https://d.tedx.net/vps/koiok.sh' && bash koiok.sh -u 18.04 -v 64 -a
fi

if [ $1 = '-Windows_Server_2003' ]
then
	wget --no-check-certificate -qO koiok.sh 'https://d.tedx.net/vps/koiok.sh' && bash koiok.sh -dd 'https://d.cao.by/os/dd/Disk_Windows_Server_2003_DataCenter_CN.vhd.gz'
fi

if [ $1 = '-Windows_7_Vienna' ]
then
	wget --no-check-certificate -qO koiok.sh 'https://d.tedx.net/vps/koiok.sh' && bash koiok.sh -dd 'https://d.cao.by/os/dd/Disk_Windows_7_Vienna_Ultimate_CN.vhd.gz'
fi

if [ $1 = '-Windows_Server_2008R2' ]
then
	wget --no-check-certificate -qO koiok.sh 'https://d.tedx.net/vps/koiok.sh' && bash koiok.sh -dd 'https://d.cao.by/os/dd/Disk_Windows_Server_2008R2_DataCenter_CN.vhd.gz'
fi

if [ $1 = '-Windows_Server_2012R2' ]
then
	wget --no-check-certificate -qO koiok.sh 'https://d.tedx.net/vps/koiok.sh' && bash koiok.sh -dd 'https://d.cao.by/os/dd/Disk_Windows_Server_2012R2_DataCenter_CN.vhd.gz'
fi

if [ $1 = '-Windows_Server_2016' ]
then
	wget --no-check-certificate -qO koiok.sh 'https://d.tedx.net/vps/koiok.sh' && bash koiok.sh -dd 'https://d.cao.by/os/dd/Disk_Windows_Server_2016_DataCenter_CN.vhd.gz'
fi

if [ $1 = '-Windows_Server_2019' ]
then
	wget --no-check-certificate -qO koiok.sh 'https://d.tedx.net/vps/koiok.sh' && bash koiok.sh -dd 'https://d.cao.by/os/dd/Disk_Windows_Server_2019_DataCenter_CN.vhd.gz'
fi


echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[31m !!!!!!!!Error!!!!!!!!Error!!!!!!!!Error!!!!!!!! \033[0m"
echo -e "\033[31m Please check if the options are correct. For example [-CentOS_7/-Windows_Server_2019] \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\n"
exit