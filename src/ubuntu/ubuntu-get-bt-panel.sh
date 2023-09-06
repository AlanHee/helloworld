#!/bin/bash

while true; do

	read -p 'Setup baota panel?(y/n):' response
	case $response in
	[Yy]*)
		wget -O install.sh https://download.bt.cn/install/install-ubuntu_6.0.sh && sudo bash install.sh ed8484bec
		break
		;;
	[Nn]*)
		exit
		;;
	*)
		echo 'please answer Y or N'
		;;
	esac
done
