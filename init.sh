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

# Set zsh
set-zsh

# Set path 
echo "export PATH=$PATH:$PATH/$fold/src" >> ~/.zshrc
export PATH="$PATH:$PATH/$fold/src"
# Set alias
set-alias

# Set ssh
set-ssh

# Set github
set-git
set-git-auto-auth

# Set vim
set-vim

echo "Done."
