#!/bin/bash
# by Alan Hee
# email: alan.hee@outlook.com

read -p "Type in your name: " user_name 
if [ -z $user_name ]; 
then
	echo 'user name has not set yet'
else
	# update var weather existed 
	if grep -q "export USER_NAME=" ~/.bashrc; then
		echo 'update user name'
		sed -i "s/^export USER_NAME=.*/export USER_NAME=$user_name/" ~/.bashrc
	# add var weather not set yet
	else
		echo 'Added user name '
		echo "export USER_NAME=$user_name" >> ~/.bashrc
	fi
fi

read -p "Type in your email: " user_email
if [ -z $user_email ]; 
then
	echo 'user email has not set yet'
else
	# update var weather existed 
	if grep -q "export USER_EMAIL=" ~/.bashrc; then
		echo 'update user email'
		sed -i "s/^export USER_EMAIL=.*/export USER_EMAIL=$user_email/" ~/.bashrc
	# add var weather not set yet
	else
		echo 'Added user email '
		echo "export USER_EMAIL=$user_email" >> ~/.bashrc
	fi
fi

#export now
if [ -e ~/.bashrc ]; then
	if [ "$(uname -o)" = "Android" ]; then 
		termux-reload-settings
	else
		source ~/.bashrc
	fi
	echo "export user_name as `echo $USER_NAME`"
	echo "export user_email as `echo $USER_EMAIL`"
fi
