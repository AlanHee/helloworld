# Init
#apt update 
#apt install -y git vim zsh openssl nodejs 

# Set global key
fold='functions';

# Load script
while true; do
    read -p 'Enter your funs path(default:functions):' funsName;
    if [ -e ~/"$funsName" ]; then
	    echo "Fold existed!"; 
	    echo "Enter functions path(default: functions):";
    else
	    fold=$funsName;
	    git clone https://github.com/alanhee/helloworld ~/$fold;
	    break;
    fi
done


# export path 
export PATH="$PATH:$HOME/$fold/src"
export SRCHOME="$HOME/$fold/src"
# Set zsh
zsh-with-oh-my-zsh

# Set alias
set-alias

# Set ssh
ssh-gen-key
ssh-push-pub

# Set github
git-init
git-auto-auth

# Set vim
vim-init

# save path
echo "export PATH=$PATH" >> ~/.zshrc
echo "export SRCHOME=$SRCHOME" >> ~/.zshrc

# Todo fixed source not found
# source $HOME/.zshrc 
echo "done."
echo "please restart terminal."
