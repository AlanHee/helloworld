#!/bin/bash

name="your_name here"
email="(your_email here)"

if [ ! -z $USER_NAME ]; then
	name=$USER_NAME
fi
if [ ! -z $USER_EMAIL ]; then
	email="($USER_EMAIL)"
fi
cat <<EOF >$1
#!/bin/bash
# $(echo $name $email) $(date +%Y.%m.%d)
EOF
chmod +x $1

if [ -e=$SRCHOME ]; then
	mv $1 $SRCHOME
	vi $SRCOME/$1
else
	vi $1
fi
