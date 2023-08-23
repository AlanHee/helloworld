#!/bin/bash

apt update -y

while true; do

	read -p 'Install ssh git nvim shfmt dart?(y/n):' response
	case $response in
	[Yy]*)
		apt install -y openssh git neovim dart
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
