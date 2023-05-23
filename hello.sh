#!/bin/bash
fold='bin';
while true; do
    read -p 'enter script path:' funsName;
	fold=$funsName;
    if [ -e ~/"$fold" ]; then
	    echo "fold existed!"; 
		break;
    else
	    git clone https://github.com/alanhee/helloworld ~/$fold;
	    break;
    fi
done
# export path 
export PATH="$PATH:$HOME/$fold/src"
export SRCHOME="$HOME/$fold/src"
export PROFILE="$HOME/$fold/profile"
# save path
echo "export PATH=$PATH" >> ~/.profile
echo "export SRCHOME=$SRCHOME" >> ~/.profile
echo "export PROFILE=$PROFILE" >> ~/.profile

# determine if termux or...
if [ "$(uname -o)" = "Android" ]; then 
	bash hello-termux.sh
else
	bash hello-ubuntu.sh
fi
