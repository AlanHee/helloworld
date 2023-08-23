#!/bin/bash

# load sciprts
fold=bin
while true; do
    read -p 'set scripts store in:' funsName;
    if [ -e ~/$funsName ]; then
	    echo "fold existed!"; 
			break;
    else 
			if [ ! -z $funsName ]; then
				fold=$funsName;
			fi
			git clone https://github.com/alanhee/helloworld ~/$fold;
	  	break;
    fi
done

# load functions 1st
source ~/$fold/src/pre-load-functions.sh
source ~/$fold/src/pre-load-alias.sh

# save Const
saveConst PATH  $PATH:~/$fold/src:~/$fold/src/more:~/$fold/src/termux:~/$fold/src/ubuntu:~/$fold/src/mac:~/$fold/src/utils -p
saveConst SRCHOME $fold/src -p
saveConst PROFILE $fold/profile -p

# set pre-load scripts
setSource $SRCHOME/pre-load-functions.sh
setSource $SRCHOME/pre-load-alias.sh

# determine env
if [ "$(uname -o)" = "Android" ]; then 
	bash hello-termux.sh
else
	bash hello-ubuntu.sh
fi
