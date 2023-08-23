#!/bin/bash
#AlanHee (alan.hee@outlook.com) 2023.08.22

while true; do
	read -p 'enter your name:' userName
	if [ ! -e=$userName ]; then
		echo 'can not be empty name'
		break
	else
		#TODO determine user if existed then break
		# `id` cmd show users uid gid groug
		echo "hello $userName"
		# while make `useradd` add record in:
		# /etc/passwd
		# /etc/shadow

		# useradd $userName
		# or useradd -g groupname $userName
		break
	fi
done

# process user password
while true; do
	read -p 'enter your password:' userPwd
	if [ ! -e=$userPwd ]; then
		echo "password can not be empty"
		break
	else
		echo "password is $userPwd"
		break
	fi
done

#TODO process user group
# more cmd: usermod userdel
# how to append group?
# useradd -g group1 user1
# or
# groupadd group1
# usermod -g group1 user1
# more cmd
# groupdel
