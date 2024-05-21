#!/bin/bash

source funs.sh

email="alan.hee@outlook.com"
if [ ! -z $USER_EMAIL ]; then
	email=$USER_EMAIL
fi

read -p "Type in your email: (default: $email)" user_email
if [ ! -z $user_email ]; then
	email="$user_email"
fi

saveExport USER_EMAIL $email
echo "User email( $email ) setup"
