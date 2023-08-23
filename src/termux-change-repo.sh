#!/bin/bash

while true; do
	read -p 'if change termux repo?(y/n)' response
	case $response in
		[Yy]* )
			termux-change-repo
			break;;
		[Nn]* )
			exit;;
		* )
			echo 'please answer Y or N'
	esac
done
