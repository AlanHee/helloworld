#!/bin/bash

apt upgrade -qyy 
apt install git -qyy

read -p 'Please set script home path: ' home;
if [ -e ~/$home ]; then
	echo "home path existed."; 
	exit 0
fi
git clone https://github.com/alanhee/helloworld ~/$home;

bash ~/$home/src/init.sh $home		
if [ "$(uname -o)" = "Android" ]; then 
	bash ~/$home/src/hello-termux.sh
else
	bash ~/$home/src/hello-ubuntu.sh
fi	
