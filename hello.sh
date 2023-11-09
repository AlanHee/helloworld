#!/bin/bash

apt upgrade -qyy 
apt install git -qyy

read -p 'Type in a path to save hello script:' home;
if [ -e ~/$home ]; then
	echo "Oop path existed."; 
	exit 0
fi

git clone https://github.com/alanhee/helloworld ~/$home;

bash ~/$home/src/init.sh $home		

