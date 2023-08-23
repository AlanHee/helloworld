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

# set pre-load scripts
setSource ~/$fold/pre-load-functions.sh
setSource ~/$fold/pre-load-utils.sh
	
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
