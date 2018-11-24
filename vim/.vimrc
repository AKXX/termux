execute pathogen#infect()
filetype on
syntax on
colorscheme distinguished 
set number
set mouse=a
let mapleader=" "
set hidden
set history=10000
filetype indent on
filetype plugin on
set linebreak 
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set hlsearch
set showmatch
set laststatus=2
set noshowmode 
set undofile
set undodir=~/.vim/undodir
set viminfo='10,\"100,:20,%,n~/.viminfo
set whichwrap=b,s,<,>,[,],h,l

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END
autocmd FileType python set breakindentopt=shift:4
" vim: set ft=vim :
