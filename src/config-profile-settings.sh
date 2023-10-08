#!/bin/bash

source pre-load-functions.sh

read -p "Type in your name: " user_name
saveConst USER_NAME $user_name
read -p "Type in your email: " user_email
saveConst USER_EMAIL $user_email

# save remove ip weather with local env
if [ "$(uname -o)" = "Android" ]; then
	read -p "Set up remote ip:" remote_ip
	saveConst REMOTE_IP $remote_ip
fi

export $USER_NAME
export $USER_EMAIL

source ~/.bashrc
