#!/bin/bash

source ~/$fold/src/pre-load-functions.sh

yesOrNo "Install ssh git nvim shfmt dart?(y/n):" "apt install -y openssh git neovim dart"
