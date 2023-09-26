#!/bin/bash

# get sciprts 
fold="bin"
while true; do
	read -p 'set scripts in:' funsName;
	
		if [ ! -z $funsName ]; then 
			$fold="$funsName"
		fi

    if [ -e ~/$fold ]; then
	    echo "fold existed!"; 
			break;
		fi

		git clone git@github.com:alanhee/helloworld.git ~/$fold;

# load funs
bash ~/$fold/src/pre-load-functions.sh
bash ~/$fold/src/pre-load-alias.sh

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
