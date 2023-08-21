#!/bin/bash

# load sciprts
fold=bin
while true; do
    read -p 'enter script fold:' funsName;
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

# expord funs
source ~/$fold/functions.sh
	
# save vars
setVar PATH  $PATH:~/$fold/src
setVar SRCHOME ~/$fold/src
setVar PROFILE $~/$fold/profile

# determine env
if [ "$(uname -o)" = "Android" ]; then 
	bash hello-termux.sh
else
	bash hello-ubuntu.sh
fi
