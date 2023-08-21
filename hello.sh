#!/bin/bash

# get sciprts
fold=bin
while true; do
    read -p 'enter script fold:' funsName;
	fold=$funsName;
    if [ -e ~/$fold ]; then
	    echo "fold existed!"; 
		break;
    else
		git clone https://github.com/alanhee/helloworld ~/$fold;
	    break;
    fi

	# load funs
	source ~/$fold/functions.sh
	
	# save vars
	setVar PATH  $PATH:~/$fold/src
	setVar SRCHOME ~/$fold/src
	setVar PROFILE $~/$fold/profile

	# determine if termux or...
	if [ "$(uname -o)" = "Android" ]; then 
		bash hello-termux.sh
	else
		bash hello-ubuntu.sh
	fi
done
