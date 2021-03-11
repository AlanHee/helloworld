set rtp+=~/.vim/bundle/Vundle.vim  
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/nerdtree'
" Plugin 'fatih/vim-go'
" Plugin 'jiangmiao/auto-pairs'
Plugin 'dart-lang/dart-vim-plugin' "dart language colorful
Plugin 'natebosch/vim-lsc'	"locate server
Plugin 'natebosch/vim-lsc-dart' "dart server 
Plugin 'neoclide/coc.nvim' "安装各种语言插件，语言的补全效果。eg: CocInstall coc-flutter 
Plugin 'KeitaNakamura/neodark.vim' "Theme
call vundle#end()
filetype plugin indent on


"Apply all defaults keymaps of vim-lsc.
"GoToDefinition': <C-]>,
"GoToDefinitionSplit': [<C-W>], <C-W><C-]>],
"FindReferences': gr,
"NextReference': <C-n>,
"PreviousReference': <C-p>,
"FindImplementations': gI,
"FindCodeActions': ga,
"Rename': gR,
"DocumentSymbol': go,
"WorkspaceSymbol': gS,
"SignatureHelp': gm,
let g:lsc_auto_map = v:true

" set leader key as space, default is "/"
let mapleader=" "

nnoremap <leader>w :w<CR>
" keymap NerdTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" keymap Flutter
nnoremap <C-r> :CocCommand flutter.run<CR>
nnoremap <leader>p :CocAction<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

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
set backspace=2
"behave mswin


"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/.build.py'

"关键字补全
" let g:ycm_seed_identifiers_with_syntax = 1
" 在接受补全后不分裂出一个窗口显示接受的项
" set completeopt-=preview
" 让补全行为与一般的IDE一致
" set completeopt=longest,menu
" 输入第一个字符就开始补全
" let g:ycm_min_num_of_chars_for_completion=1
" 每次重新生成匹配项，禁止缓存匹配项
" let g:ycm_cache_omnifunc=0
colorscheme neodark 

