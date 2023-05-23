#!/bin/bash
if [ -e ~/.termux/termux.properties ];
then
	mv -f ~/.termux/termux.properties ~/.termux/termux.properties.old.$(date +%Y.%m.%d-%H:%M:%S);
fi
cp -f $fold/profile/termux.properties ~/.termux
echo 'Changes shell in full mode'
