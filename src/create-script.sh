#!/bin/bash

name="your_name here"
email="(your_email here)"

if [ ! -z $USER_NAME ]; then
	name=$USER_NAME
fi
if [ ! -z $USER_EMAIL ]; then
	email="($USER_EMAIL)"
fi
cat<<EOF > $1
#!/bin/bash
# Create by `echo $name $email`
# On: `date +%Y/%m/%d`
EOF
chmod +x $1
vi $1
