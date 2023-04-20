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

# Todo make choose 
# Change repo
# echo "Choose termux repo"
# termux-change-repo

# Install app
apt update -y
apt install -y openssh git neovim dart
echo "Installed app"

# Retore termux profiles
if [ -e ~/.termux/termux.properties ];
then
	mv -f ~/.termux/termux.properties ~/.termux/termux.properties.old.$(date +%Y.%m.%d-%H:%M:%S);
fi
cp -f $fold/profile/termux.properties ~/.termux
echo 'Changes shell in full mode'


# Keep keymapper profiles to local storage 
termux-setup-storage
cp $fold/profile/mappings* storage/downloads/

#Config with sub script 
git-auto-auth
git-init
ssh-key-gen
ssh-push-pub

# Install neovim with some plugs
# if [ -e $SRCHOME/.config ];
# then
#	mv -f $SRCHOME/.config $SRCHOME/.config.old.$(date +%Y.%m.%d-%H:%M:%S);
# fi
# tar -xzf $SRCHOME/neovim.tar -C ~/
# echo 'Installed neovim'

# Reload termux settings
source ~/.profile
termux-reload-settings
