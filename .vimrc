set number relativenumber
syntax on

nnoremap j h
nnoremap k j
nnoremap l k
nnoremap ; l
nnoremap h ;
vnoremap j h
vnoremap k j
vnoremap l k
vnoremap ; l
vnoremap h ;
inoremap kj <Esc>
inoremap jk <Esc>
inoremap uu <Esc>ui

nnoremap <silent> <leader>o :<C-u>call append(line("."),   repeat([""], v:count1))<CR>
nnoremap <silent> <leader>O :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>

set tabstop=4
set shiftwidth=4

"vim-plug
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
"Plug 'ycm-core/YouCompleteMe'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()


