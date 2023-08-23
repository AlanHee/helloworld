#!/bin/bash
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
echo "alias m='men'" >> ~/.zshrc
echo "alias v='nvim'" >> ~/.zshrc
echo "alias cd.book='cd ~/cookbook'" >> ~/.zshrc
echo "alias cd.src='cd $SRCHOME'" >> ~/.zshrc
echo "alias cd.blog='cd ~/blog'" >> ~/.zshrc
echo "alias book.cli='vim ~/cookbook/profession/cli.md'" >> ~/.zshrc
echo "alias book.vim='vim ~/cookbook/profession/vim.md'" >> ~/.zshrc
echo "alias book.git='vim ~/cookbook/profession/git.md'" >> ~/.zshrc
echo "alias open.zsh='vim ~/.zshrc'" >> ~/.zshrc
echo "alias open.vim='vim ~/.vimrc'" >> ~/.zshrc