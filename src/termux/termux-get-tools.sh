#!/bin/bash

source ~/$fold/src/pre-load-functions.sh

yesOrNo "Install ssh nvim shfmt dart?(y/n):" "apt install -y openssh git neovim dart"
