#!/bin/bash

PATH=$PATH:~/$1/src:~/$1/src/termux:~/$1/src/ubuntu:~/$1/src/utils:~/$1/src/devops:~/$1/src/mac
export PATH=$PATH
export SRC=~/$1
source funs.sh
saveExport PATH $PATH
saveExport SRC ~/$1

echo ". ~/$1/config.sh" > ~/.bashrc
if [ "$(uname -o)" = "Android" ]; then 
	hello-termux.sh
else
	hello-ubuntu.sh
fi	
