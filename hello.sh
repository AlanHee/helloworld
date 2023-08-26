#!/bin/bash

# load sciprts
fold=""
while true; do

	read -p 'set scripts store in:' funsName;
	
		if [ -z $funsName ]; then 
			fold="bin"
		else 
			fold="$funsName"
		fi

    if [ -e ~/$fold ]; then
	    echo "fold existed!"; 
			#TODO 
			break;
    else 
			git clone https://github.com/alanhee/helloworld ~/$fold;
    fi

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
done
