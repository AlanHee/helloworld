#!/bin/bash

read -p 'Let script in:(default: bin)' home
if [ -z $home ]; then
	$home="bin"
fi
if [ -e ~/$home ]; then
	echo "Oop, path existed."
	exit 0
fi

termux-setup-storage
apt upgrade -qyy
apt install git -qyy
git clone https://github.com/alanhee/helloworld ~/$home
echo 'Got script.'

bash ~/$home/src/init.sh $home
