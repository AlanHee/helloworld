#!/bin/bash
cd
tar -czf neovim.tar .config/nvim
mv -f neovim.tar $SRCHOME
echo "archived .config/nvim fold"
