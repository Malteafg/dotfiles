set number relativenumber
set nocompatible
filetype plugin on
syntax on
set so=12

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key
" binding.
" " `s{char}{label}`
vmap s <Plug>(easymotion-bd-w)
map S <Plug>(easymotion-overwin-w)
map s <Plug>(easymotion-overwin-f2)
" " Turn on case-insensitive feature
" " Turn on case-insensitive feature
" " Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1
" " JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

noremap ( {
noremap ) }
noremap { (
noremap } )
"noremap d g
"noremap e k
"noremap f e
"noremap g t
"noremap i l
"noremap j y
"noremap k n
"noremap l u
"noremap n j
"noremap o p
"noremap p r
"noremap r s
"noremap s d
"noremap t f
"noremap u i
"noremap y o
"noremap D G
"noremap E K
"noremap F E
"noremap G T
"noremap I L
"noremap J Y
"noremap K N
"noremap L U
"noremap N J
"noremap O P
"noremap P R
"noremap R S
"noremap S D
"noremap T F
"noremap U I
"noremap Y O

"nnoremap j h
"nnoremap k j
"nnoremap l k
"nnoremap ; l
"nnoremap h ;
"vnoremap j h
"vnoremap k j
"vnoremap l k
"vnoremap ; l
"vnoremap h ;
inoremap fw <Esc>
inoremap wf <Esc>

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
Plug 'easymotion/vim-easymotion'
Plug 'vimwiki/vimwiki'

call plug#end()


