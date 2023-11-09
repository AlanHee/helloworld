#!/bin/bash

newPath=$PATH:~/$1/src:~/$1/src/termux:~/$1/src/ubuntu:~/$1/src/utils:~/$1/src/devops:~/$1/src/mac
export PATH=$newPath

echo $newPath >~/$1/config.sh 
echo ". ~/$1/config.sh" > ~/.bashrc

if [ "$(uname -o)" = "Android" ]; then 
	hello-termux.sh
else
	hello-ubuntu.sh
fi	
