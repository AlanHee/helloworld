#!/bin/bash
source funs.sh

function getStyle() {
	cd $HOME
	git clone https://github.com/adi1090x/termux-style
	cd termux-style
	./install
}
yesOrNo "Setup stroage(y/n)" getStyle

# after then run `termux-style` to change termux style
