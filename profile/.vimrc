call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs' 
Plug 'ervandew/supertab'  
Plug 'scrooloose/nerdtree' "file navigater
Plug 'dart-lang/dart-vim-plugin' "dart lang color
Plug 'natebosch/vim-lsc'	"locate server
Plug 'natebosch/vim-lsc-dart' "dart server 
Plug 'KeitaNakamura/neodark.vim' "Theme
Plug 'z0mbix/vim-shfmt', { 'for': 'sh' }
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'SirVer/Ultisnips' " art lang snippet
Plug 'natebosch/dartlang-snippets'
call plug#end()

" Theme 
colorscheme neodark 
" Basic Config
set nocompatible "关闭兼容模式，基础的设置，设置后才能使用vim许多特有的特性
set encoding=utf-8
set cindent "设置自动缩进，根据的是c
set tabstop=2 "设置tab宽度是4
set shiftwidth=2 "用于程序中自动缩进所使用的空白长度指示的
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

" NERDTreed Config
" Open a file and automatically close the explorer buffer
let NERDTreeQuitOnOpen=1
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Plug vim-shmft config 
" auto save while save
let g:shfmt_fmt_on_save = 1

" Fixed preview window no auto close
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Config lsc 
" Use all the defaults (recommended):
let g:lsc_auto_map = v:true
" Complete default mappings are:
let g:lsc_auto_map = {
    \ 'GoToDefinition': '<C-]>',
    \ 'GoToDefinitionSplit': ['<C-W>]', '<C-W><C-]>'],
    \ 'FindReferences': 'gr',
    \ 'NextReference': '<C-n>',
    \ 'PreviousReference': '<C-p>',
    \ 'FindImplementations': 'gI',
    \ 'FindCodeActions': 'ga',
    \ 'Rename': 'gR',
    \ 'ShowHover': v:true,
    \ 'DocumentSymbol': 'go',
    \ 'WorkspaceSymbol': 'gS',
    \ 'SignatureHelp': 'gm',
    \ 'Completion': 'completefunc',
    \}
" Fixed preview window no auto close
autocmd CompleteDone * silent! pclose

" Auto format dart while save 
autocmd BufWritePre *.dart* DartFmt
