call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs' 
Plug 'ervandew/supertab'  
Plug 'scrooloose/nerdtree' "file navigater
Plug 'dart-lang/dart-vim-plugin' "dart lang color
Plug 'natebosch/vim-lsc'	"locate server
Plug 'natebosch/vim-lsc-dart' "dart server 
"Plug 'KeitaNakamura/neodark.vim' "Theme
Plug 'connorholyday/vim-snazzy'
call plug#end()

" Theme 
colorscheme snazzy
" Basic Config
set nocompatible "关闭兼容模式，基础的设置，设置后才能使用vim许多特有的特性
set encoding=utf-8
set cindent "设置自动缩进，根据的是c
set tabstop=4 "设置tab宽度是4
set shiftwidth=4 "用于程序中自动缩进所使用的空白长度指示的
set hlsearch "高亮搜索的关键字
set incsearch "以同时高亮所有匹配的字符
set showmatch "括号匹配
set history=100
syntax on	  "High light syntax
set ignorecase "搜索忽略大小写
set number "设置显示行号
set cursorline "高亮光标所在的行
set backspace=2 "Fixed mac delete btn no work
" TextEdit might fail if hidden is not set.
set hidden
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" NERDTreed Config
" Open a file and automatically close the explorer buffer
let NERDTreeQuitOnOpen=1
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
