#!/bin/bash

source funs.sh

userName="AlanHee"
userEmail="alan.hee@outlook.com"
if [ ! -z $USER_NAME ]; then
	userName=$USER_NAME
fi
if [ ! -z $USER_EMAIL ]; then
	userEmail=$USER_EMAIL
fi

read -p "Type in your name: (default: $userName)" user_name
if [ ! -z $user_name ]; then
	userName="$user_name"
fi

read -p "Type in your email: (default: $userEmail)" user_email
if [ ! -z $user_email ]; then
	userEmail="$user_email"
fi

saveExport USER_NAME $userName
saveExport USER_EMAIL $userEmail

echo "User name( $userName ) setup"
echo "User email( $userEmail ) setup"
