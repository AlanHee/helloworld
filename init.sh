#!/bin/bash

read -p 'Get shell script in path(default as ~/bin): ' home
if [ -z $home ]; then
	home="bin"
fi
if [ -e ~/$home ]; then
	echo "Oop, path existed."
	exit 0
fi

if [ "$(uname -o)" == "Android" ]; then
	termux-change-repo
fi

apt upgrade -qy
apt install git -qy
if git clone -progress https://github.com/alanhee/helloworld ~/$home; then
	echo "Cloned success in: ~/$home"
else
	echo 'Cloned failed. Check your network.'
fi

bash ~/$home/src/hello.sh $home
