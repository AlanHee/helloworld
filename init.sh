# author: 	AlanHee
# email: 	alan.hee@outlook.com
# home page: 	www.alanhee.site

echo "Hello World!"

## Sets var
scriptsPath='';

## Install tools
apt update
apt install -y git zsh nodejs openssl 


## Pull repos
while true; do
    read -p 'Enter your funs fold name(default:functions):' funsName;
    if [ -e ~/"$funsName" ]; then
	    echo "Fold existed!"; 
	    echo "Enter functions fold name(default: functionss):";
    else
	    scriptsPath=$funsName;
	    git clone https://github.com/alanhee/helloworld ~/$scriptsPath;
	    break;
    fi
done

echo "Done."
