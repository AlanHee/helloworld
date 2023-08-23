#!/bin/bash

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

# config auto auth
git config --global credential.helper store
