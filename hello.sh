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
source ~/$fold/src/pre-load-utils.sh

# save vars
setVar PATH  $PATH:~/$fold/src
setVar SRCHOME ~/$fold/src
setVar PROFILE $~/$fold/profile

# set pre-load scripts
setSource ~/$SRCHOME/pre-load-functions.sh
setSource ~/$SRCHOME/pre-load-utils.sh

# determine env
if [ "$(uname -o)" = "Android" ]; then 
	bash hello-termux.sh
else
	bash hello-ubuntu.sh
fi
