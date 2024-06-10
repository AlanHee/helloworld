#!/bin/bash

read -p 'Get shell scripts in path(default as ~/bin): ' home
if [ -z $home ]; then
	home="bin"
fi
if [ -e ~/$home ]; then
	echo "Oop, path existed."
	exit 0
fi

if [ "$(uname -o)" = "Android" ]; then
	termux-change-repo
else

apt upgrade -qyy
apt install git -qyy
git clone https://github.com/alanhee/helloworld ~/$home
echo "Got shell scripts in: ~/$home"

bash ~/$home/src/hello.sh $home
