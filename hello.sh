#!/bin/bash

# update 1st.
# determine env
if [ "$(uname -o)" = "Android" ]; then 
	pkg upgrade -y
	pkg install git -y
else
	apt upgrade -y
	apt install git -y
fi
# get sciprts 
fold="bin"
while true; do
	read -p 'set scripts home path(default: bin): ' funsName;
	
		if [ ! -z $funsName ]; then 
			$fold="$funsName"
		fi

    if [ -e ~/$fold ]; then
	    echo "fold existed!"; 
			break;
		fi

		git clone https://github.com/alanhee/helloworld ~/$fold;
		echo "get scripts up" 

		break;

done
#export funs
bash ~/$fold/src/pre-load-functions.sh
bash ~/$fold/src/pre-load-alias.sh
source ~/$fold/src/pre-load-functions.sh
source ~/$fold/src/pre-load-alias.sh


# save Cons
# Fixed ~/ issue
saveConst SRCHOME /$fold/src -p
saveConst PROFILE /$fold/profile -p

# set pre-load scripts
setSource $SRCHOME/pre-load-functions.sh
setSource $SRCHOME/pre-load-alias.sh

# determine env
if [ "$(uname -o)" = "Android" ]; then 
	bash hello-termux.sh
else
	bash hello-ubuntu.sh
fi
