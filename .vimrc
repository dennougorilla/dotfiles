syntax enable
colorscheme morning

set autoindent 
set tabstop=4 softtabstop=4 shiftwidth=4 
set expandtab

"cursorline
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

set path+=**
set spell
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
"set clipboard=unnamed
set showmatch
set matchtime=1
set laststatus=2
set noswapfile
set nobackup
set writebackup
set foldmethod=marker

"dein {{{
if &compatible
    set nocompatible
endif

augroup MyAutoCmd
    autocmd!
augroup END

let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath
let s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/dein.toml'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml_file)
  call dein#end()
  call dein#save_state()
endif
if has('vim_starting') && dein#check_install()
  call dein#install()
endif
"}}}

syntax enable
