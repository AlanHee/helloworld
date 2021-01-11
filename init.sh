# author: 	AlanHee
# email: 	alan.hee@outlook.com
# home page: 	www.alanhee.site

echo "Hello ..."

## Install tools
apt update
apt install -y git zsh nodejs openssl 

## Config git
gitUserName='';
while true; do
    read -p 'Enter your git global name:' gitName;
    if [ -n "$gitName" ]; then
	    git config --global user.name "$gitName";
	    gitUserName=$gitName;
	    break;
    fi
done
while true; do
    read -p 'Enter your git global email:' gitEmail;
    if [ -n "$gitEmail" ]; then
	    git config --global user.email "$gitEmail";
	    break;
    fi
done

## Pull repos
git clone https://github.com/"$gitUserName"/blog
git clone https://github.com/"$gitUserName"/cookbook

echo "Hello World!"
