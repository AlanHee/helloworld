apt install vim

if [ -e ~/.vim/bundle/Vundle.vim ];
then
	mv -f ~/.vim/bundle/Vundle.vim ~/.vim/bundle/Vundle.vim.old;
fi
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

if [ -e ~/.vimrc ];
then
	mv -f ~/.vimrc ~/.vimrc.old;
fi
cp $SRCHOME/.vimrc ~/.vimrc

echo "setup vim."
