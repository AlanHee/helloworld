call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs' 
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } "file navigator
Plug 'dart-lang/dart-vim-plugin' "dart lang color
Plug 'natebosch/vim-lsc'	"locate server
Plug 'natebosch/vim-lsc-dart' "dart server 
Plug 'KeitaNakamura/neodark.vim' "Theme
Plug 'z0mbix/vim-shfmt', { 'for': 'sh' }
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim', {'do': ':UpdateRemotePlugins'}
"CocInstall coc-rust-analyzer
Plug 'junegunn/fzf.vim'
"Plug 'airblade/vim-gitgutter'
"Plug 'SirVer/Ultisnips' 
"Plug 'natebosch/dartlang-snippets'
"Plug 'vim-airline/vim-airline'		
call plug#end()

colorscheme neodark 
set nocompatible 
set encoding=utf-8
set cindent 
set tabstop=2 
set shiftwidth=2 
set hlsearch
set incsearch
set showmatch 
set history=100
syntax on
set noignorecase
" set nu 					"set number line
set nonu				  "set no number line
set cursorline
set backspace=2 "Fixed mac delete btn no work
set hidden
set nobackup
set nowritebackup
set noswapfile
set updatetime=300 " delays and poor user experience.
" set relativenumber
" set norelativenumber

" NERDTreed Config
let NERDTreeQuitOnOpen=1
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Plug vim-shmft config 
let g:shfmt_fmt_on_save = 1

" Config lsc 
" let g:lsc_auto_map = v:true
" Use all the defaults (recommended):
let g:lsc_auto_map = {
     \ 'GoToDefinition': '<C-]>',
		 \ 'GoToDefinitionSplit': ['<C-W>]', '<C-W><C-]>'],
		 \ 'FindReferences': 'gr',
		 \ 'NextReference': '<C-n>',
		 \ 'PreviousReference': 'gp',
		 \ 'FindImplementations': 'gI',
		 \ 'FindCodeActions': 'ga',
		 \ 'Rename': 'gR',
		 \ 'ShowHover': v:true,
		 \ 'DocumentSymbol': 'go',
		 \ 'WorkspaceSymbol': 'gS',
		 \ 'SignatureHelp': 'gm',
		 \ 'Completion': 'completefunc',
		 \}

" Config fzf
nnoremap <C-p> :Files<CR>
nnoremap <C-g> :Rg<CR>

" Config rust
let g:rustfmt_autosave = 1
let g:rust_check_on_save = 1
let g:ale_linters = {'rust': ['analyzer', 'clippy']}
let g:ale_fixers = {'rust': ['rustfmt', 'clippy']}

" Fixed preview window no auto close
autocmd CompleteDone * silent! pclose

" Auto format dart while save 
autocmd BufWritePre *.dart* DartFmt

" Hidden status bar
let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction

nnoremap <S-h> :call ToggleHiddenAll()<CR>
" Hiddden status now
call ToggleHiddenAll()
