set number relativenumber
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
set tabstop=4
set shiftwidth=4

"vim-plug
call plug#begin('~/.vim/plugged')

Plug 'https://tpope.io/vim/surround.git'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'ycm-core/YouCompleteMe'
Plug 'tpope/vim-fugitive'

call plug#end()


