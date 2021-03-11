# Init
#apt update 
#apt install -y git vim zsh openssl nodejs 

# Set global key
fold='';

# Load script
while true; do
    read -p 'Enter your funs fold name(default:functions):' funsName;
    if [ -e ~/"$funsName" ]; then
	    echo "Fold existed!"; 
	    echo "Enter functions fold name(default: functionss):";
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
set-oh-my-zsh

# Set alias
set-alias

# Set ssh
set-ssh
set-ssh-push-pub

# Set github
set-git
set-git-auto-auth

# Set vim
set-vim

# save path
echo "export PATH=$PATH" >> ~/.zshrc
echo "export SRCHOME=$SRCHOME" >> ~/.zshrc

# Todo fixed source not found
# source $HOME/.zshrc 
echo "done."
echo "please restart terminal."
