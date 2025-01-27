#!/bin/bash
source funs.sh

name="AlanHee"
email="alan.hee@outlook.com"

if [ ! -z $USER_NAME ]; then
	name=$USER_NAME
fi

read -p "Type in your name: (default: $name)" user_name
if [ ! -z $user_name ]; then
	name="$user_name"
fi

if [ ! -z $USER_EMAIL ]; then
	email=$USER_EMAIL
fi

read -p "Type in your email: (default: $email)" user_email
if [ ! -z $user_email ]; then
	email="$user_email"
fi

saveExport USER_NAME $name
saveExport USER_EMAIL $email
echo "Your name: $name"
echo "Your email: $email"
echo "Config setup"
