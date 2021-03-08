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
set-oh-my-zsh.sh

# Set alias
set-alias.sh

# Set ssh
set-ssh.sh
set-ssh-push-pub.sh

# Set github
set-git.sh
set-git-auto-auth.sh

# Set vim
set-vim.sh

# save path
echo "export PATH=$PATH" >> ~/.zshrc
echo "export SRCHOME=$SRCHOME" >> ~/.zshrc

# Todo fixed source not found
# source $HOME/.zshrc 
echo "done."
echo "please restart terminal."
