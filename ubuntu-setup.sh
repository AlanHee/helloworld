#!/bin/bash
# Clone newest script form server

# Sets default script home
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
	    git clone https://gitee.com/alanhee/helloworld ~/$fold;
	    break;
    fi
done

# export path 
export PATH="$PATH:$HOME/$fold/src"
export SRCHOME="$HOME/$fold/src"

# save path
echo "export PATH=$PATH" >> ~/.profile
echo "export SRCHOME=$SRCHOME" >> ~/.profile
source ~/.profile

# Todo make choose 
# Change repo
# echo "Choose termux repo"
# termux-change-repo

# Install app
apt update -y
apt install -y neovim
echo "Installed app"

#Config with sub script 
git-auto-auth
git-init
ubuntu-install-dart
ubuntu-install-frog_dart
ubuntu-install-bt-panel
server-vpn-setup
