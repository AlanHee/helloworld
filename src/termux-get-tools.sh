#!/bin/bash

while true; do

	read -p 'Install ssh git nvim dart?(y/n):' response
	case $response in
		[Yy]* )
			apt update -y
			apt install -y openssh git neovim dart
			break;;
		[Nn]* )
			exit;;
		* )
			echo 'please answer Y or N'
	esac
done
