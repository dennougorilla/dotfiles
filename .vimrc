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
set undofile
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

"Vim Plug{{{
call plug#begin('~/.vim/plugged')

"Plug {{{
Plug 'jistr/vim-nerdtree-tabs'
Plug 'dennougorilla/azuki.vim'
Plug 'dennougorilla/vemo.vim'
Plug 'dennougorilla/vmt.vim'
Plug 'lambdalisue/gina.vim'
Plug 'tpope/vim-fugitive'
Plug 'fatih/vim-go'
Plug 'thinca/vim-quickrun'
Plug 'simeji/winresizer'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'sjl/badwolf'
Plug 'cocopon/iceberg.vim'
Plug 'w0ng/vim-hybrid'
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
"}}}

call plug#end()
"}}}

colorscheme onedark
autocmd FileType html colorscheme onedark
autocmd FileType go colorscheme azuki
autocmd FileType python colorscheme azuki


let g:airline#extensions#tabline#enabled = 1
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab
