#!/bin/bash

home="bin"
read -p 'Save script in (default ~/bin): ' input
if [ ! -z $input ]; then
   home=$input
fi
if [ -e ~/$home ]; then
	echo "Oop, path existed."
	exit 1
fi

if [ "$(uname -o)" == "Android" ]; then
	termux-change-repo
fi

apt upgrade -qy
apt install git -qy

if git clone --progress https://github.com/alanhee/helloworld ~/$home; then
	echo "Cloned success in: ~/$home"
else
	echo 'Cloned failed. Check your network.'
	exit 1
fi

bash ~/$home/src/hello.sh $home
