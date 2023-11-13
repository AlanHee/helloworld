#!/bin/bash

apt upgrade -qyy 
apt install git -qyy

read -p 'Type in a path to save scripts:' home;
if [ -z ~/$home ]; then
	$home="bin"
fi
if [ -e ~/$home ]; then
	echo "Oop path existed."; 
	exit 0
fi

git clone https://github.com/alanhee/helloworld ~/$home;
echo 'Got scripts.'

bash ~/$home/src/init.sh $home		

