syntax enable
inoremap <silent> jj <ESC>

set autoindent 
set tabstop=4 softtabstop=4 shiftwidth=4 
set expandtab

set path+=**
set backspace=indent,eol,start
"set cursorline
"set cursorcolumn
set number
set hidden
set visualbell
set title
set t_Co=259
set ruler
set wrapscan
set wildmenu
set clipboard+=unnamed
set showmatch
set matchtime=1
set laststatus=2
set noswapfile
set noundofile
set nobackup
set writebackup
set foldmethod=marker

"Vundle {{{
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugins {{{
Plugin 'dennougorilla/azuki.vim'
Plugin 'dennougorilla/vemo.vim'
Plugin 'dennougorilla/vmt.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'lambdalisue/gina.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'faith/vim-go'
Plugin 'thinca/vim-quickrun'
Plugin 'simeji/winresizer'
"}}}

call vundle#end()
filetype plugin indent on
"}}}

colorscheme azuki
syntax enable
