#!/bin/bash

PATH=$PATH:~/$1/src:~/$1/src/termux:~/$1/src/ubuntu:~/$1/src/devops:~/$1/src/mac:~/$1/src/utils
export PATH=$PATH
export SRC=~/$1
source funs.sh
saveExport PATH $PATH
saveExport SRC ~/$1
saveSource alias.sh
saveSource funs.sh

echo ". ~/$1/config.sh" >~/.bashrc
if [ "$(uname -o)" = "Android" ]; then
	git clone https://github.com/alanhee/hello-termux $SRC/src/termux
	hello-termux.sh
else
	git clone https://github.com/alanhee/hello-ubuntu $SRC/src/ubuntu
	hello-ubuntu.sh
fi
