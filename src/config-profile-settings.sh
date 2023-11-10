#!/bin/bash

source funs.sh

userName="AlanHee"
userEmail="alan.hee@outlook.com"
remoteIP="0.0.0.0"

read -p "Type in your name: (default: Alan Hee)" user_name
if [ ! -z $user_name ]; then
	userName="$user_name"
fi

read -p "Type in your email: (default: alan.hee@outlook.com)" user_email
if [ ! -z $user_email ]; then
	userEmail="$user_email"
fi

echo $userName
echo $userEmail

# save remove ip weather with local env
if [ "$(uname -o)" = "Android" ]; then
	read -p "Set up remote ip($REMOTE_IP):" remote_ip
	if [ ! -z $remote_ip ]; then
		remoteIP=$remote_ip
	fi
fi

echo $remoteIP

saveConst USER_NAME $userName
saveConst USER_EMAIL $userEmail
saveConst REMOTE_IP $remoteIP
export USER_NAME=$userName
export USER_EMAIL=$userEmail
export REMOTE_IP=$remoteIP
