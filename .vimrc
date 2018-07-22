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
Plugin 'lambdalisue/gina.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'fatih/vim-go'
Plugin 'dhruvasagar/vim-table-mode'
let g:table_mode_corner="|"
Plugin 'thinca/vim-quickrun'
Plugin 'simeji/winresizer'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'joshdick/onedark.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'sjl/badwolf'
Plugin 'cocopon/iceberg.vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'morhetz/gruvbox'
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
"}}}

call vundle#end()
filetype plugin indent on
"}}}


colorscheme onedark
autocmd FileType html colorscheme onedark
autocmd FileType go colorscheme azuki
autocmd FileType python colorscheme azuki


let g:airline#extensions#tabline#enabled = 1
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab
