"vim-lsp
let g:asyncomplete_auto_popup = 0
if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif

if executable('gopls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'gopls',
        \ 'cmd': {server_info->['gopls', '-mode', 'stdio']},
        \ 'whitelist': ['go'],
        \ })
endif

if executable('flow')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'flow',
        \ 'cmd': {server_info->['flow', 'lsp']},
        \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), '.flowconfig'))},
        \ 'whitelist': ['javascript', 'javascript.jsx'],
        \ })
endif

if has('vim_starting')
  set encoding=utf-8
  scriptencoding utf-8

  if !has('gui_running')
        \ && exists('&termguicolors')
        \ && $COLORTERM ==# 'truecolor'
    if !has('nvim')
      let &t_8f = "\e[38;2;%lu;%lu;%lum"
      let &t_8b = "\e[48;2;%lu;%lu;%lum"
    endif
    set termguicolors
  endif
endif

function! GitAC()
	write
	let result = system('git add ' . bufname(""))
	echo result
	let msg = input('Enter commit msg: ')
	let result = system('git commit -m' . '"'. msg .'"')
	echo ' '
	echo result
endfunction
noremap ZZ :call GitAC()<CR>

syntax enable
filetype indent plugin on
inoremap <silent> jj <ESC>

set nocompatible
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
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'natebosch/vim-lsc'
let g:lsp_async_completion = 1

Plug 'dennougorilla/azuki.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all' }
Plug 'ryanolsonx/vim-lsp-javascript'

Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'mattn/gist-vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-easy-align'

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
autocmd FileType go colorscheme onedark
autocmd FileType python colorscheme onedark

let g:airline#extensions#tabline#enabled = 1
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab

set t_Co=256
autocmd BufNewFile,BufRead *.{html,htm,vue*} set filetype=html
set secure

vnoremap <silent> <Enter> :EasyAlign<cr>

