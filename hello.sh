#!/bin/bash

# get sciprts
fold=bin
while true; do
    read -p 'enter script path:' funsName;
	fold=$funsName;
    if [ -e ~/$fold ]; then
	    echo "fold existed!"; 
		break;
    else
		git clone https://github.com/alanhee/helloworld ~/$fold;
	    break;
    fi

	# expot vars
	export PATH=$PATH:~/$fold/src
	export SRCHOME=~/$fold/src
	export PROFILE=~/$fold/profile

	# save vars
	if [ ! -e ~/.bashrc ]; then 
		touch ~/.bashrc; 
		echo "export fold=$fold" >> ~/.bashrc
		echo "export PATH=$PATH" >> ~/.bashrc
		echo "export SRCHOME=$SRCHOME" >> ~/.bashrc
		echo "export PROFILE=$PROFILE" >> ~/.bashrc
	# update vars
	else
		if grep -q "export PATH=" ~/.bashrc; then
			sed -i 's/^export PATH=.*/export PATH=$PATH:~\/$fold\/src/' ~/.bashrc
		fi
	
		if grep -q "export SRCHOME=" ~/.bashrc; then
			sed -i 's/^export SRCHOME=.*/export SRCHOME=~\/$fold\/src/' ~/.bashrc
		fi

		if grep -q "export PROFILE=" ~/.bashrc; then
			sed -i 's/^export PROFILE=.*/export PROFILE=~\/$fold\/profile/' ~/.bashrc
		fi
	fi

	# determine if termux or...
	if [ "$(uname -o)" = "Android" ]; then 
		bash hello-termux.sh
	else
		bash hello-ubuntu.sh
	fi
done
