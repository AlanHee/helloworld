#!/bin/bash

if [[ ! -z $USER_NAME && ! -z $USER_EMAIL ]]; then
	git config --global user.name $USER_NAME
	git config --global user.email $USER_EMAIL
	echo 'git auto setup'
else 
	# config user name
	read -p "config git global user name(Alan Hee):" user_name
	if [ -z $user_name ]; then
		git config --global user.name "Alan Hee"
	else
		git config --global user.name $user_name
	fi
	# config user password
	read -p "config git global user email(alan.hee@outlook.com):" user_email
	if [ -z $user_email ]; then
		git config --global user.email "alan.hee@outlook.com"
	else
		git config --global user.email $user_email
	fi
fi
git config --global credential.helper store
