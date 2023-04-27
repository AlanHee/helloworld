#!/bin/bash
fold='bin';
while true; do
    read -p 'Enter your script helper path:' funsName;
    if [ -e ~/"$funsName" ]; then
	    echo "Fold existed!"; 
	    echo "Enter functions path:";
		break;
	    fold=$funsName;
    else
	    fold=$funsName;
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

#Determine if termux or else
if [ "$(uname -o)" = "Android" ]; then 
	for script in `ls $SRCHOME/termux*`; do 
		bash $script;
	done
else
	for script in `ls $SRCHOME/ubuntu*`; do 
		bash $script;
	done
fi

#Config tools
git-init.sh
git-auto-auth.sh
ssh-key-gen.sh
ssh-push-pub.sh
nvim-init.sh

termux-reload-settings
