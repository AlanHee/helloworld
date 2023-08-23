#!/bin/bash

while true; do

	read -p 'Setup stroage?(y/n):' response
	case $response in
	[Yy]*)
		termux-setup-storage
		# Keep keymapper profiles to local storage
		cp $PROFILE/mappings* storage/downloads/
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
