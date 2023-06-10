#!/bin/bash
if [ -e ~/.config/nvim/autoload/plug.vim ];
then
	echo 'Oop vim-plug existed'
	mv -f ~/.config/nvim/autoload/plug.vim ~/.config/nvim/autoload/plug.vim.$(date +%Y.%m.%d-%H:%M:%S);
else
	git clone https://github.com/junegunn/vim-plug
        mkdir -p ~/.config/nvim/autoload
	cp -f vim-plug/plug.vim ~/.config/nvim/autoload/plug.vim
	rm vim-plug -rf
        echo 'Installed vim plug fun'
fi

if [ -e ~/.config/nvim/init.vim ];
then 
	echo 'Oop nvim profile existed'
else
	cd $PROFILE
  	cp -f init.vim ~/.config/nvim/      
	echo 'Restored your nvim profile'
fi
	