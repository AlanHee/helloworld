#!/bin/bash
if [ -e ~/.config/nvim/autoload/plug.vim ]; then
	echo 'Oop vim-plug existed'
	mv -f ~/.config/nvim/autoload/plug.vim ~/.config/nvim/autoload/plug.vim.$(date +%Y.%m.%d-%H:%M:%S)
	git clone https://github.com/junegunn/vim-plug
	cp -f vim-plug/plug.vim ~/.config/nvim/autoload/plug.vim
	rm vim-plug -rf
else
	git clone https://github.com/junegunn/vim-plug
	mkdir -p ~/.config/nvim/autoload
	cp -f vim-plug/plug.vim ~/.config/nvim/autoload/plug.vim
	rm vim-plug -rf
fi

echo 'Installed vim plugs'

if [ -e ~/.config/nvim/init.vim ]; then
	echo 'Oop nvim profile existed'
	echo 'backup up your nvim profile (init.vim)'
	mv -f ~/.config/nvim/init.vim ~/.config/nvim/init.vim.$(date +%Y.%m.%d-%H:%M:%S)
	cd $PROFILE
	cp -f init.vim ~/.config/nvim/
else
	cd $PROFILE
	cp -f init.vim ~/.config/nvim/
fi

echo 'Restored your nvim profile'
# update plugs
vim +PlugClean[!] +PlugUpdate +qa
