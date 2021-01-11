# author: AlanHee
# email: alan.hee@outlook.com
# site: www.alanhee.site

# workflow:
# 1 echo hello world
# 2 ask your env
# 2.1 install helpful tools: openssl nodejs git
# 2.2 determine if installed tools echo result 
# 3 enter github username&pwd
# 4 pull github respos

echo "Hello World."
apt update
apt install -y git zsh nodejs openssl 

## config git
#  git config --global user.email "you@example.com"
#  git config --global user.name "Your Name"

echo "Done. Good job man!"
