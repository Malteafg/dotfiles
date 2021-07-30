set number relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set incsearch
"set signcolumn=yes
set nocompatible
filetype plugin on
syntax on
set so=12

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
"Plug 'ycm-core/YouCompleteMe'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'vimwiki/vimwiki'
Plug 'morhetz/gruvbox'
Plug 'tmsvg/pear-tree'

call plug#end()

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
iabbrev </ </<C-X><C-O>

let g:vimwiki_list = [{'path_html': '~/vimwiki/vimwiki_html/'}]

nnoremap <SPACE> <Nop>
let mapleader = " "
nnoremap Y y$

"COLORS
let g:gruvbox_invert_selection=0
let g:gruvbox_contrast_dark='soft'
set bg=dark
colorscheme gruvbox
hi Normal ctermbg=NONE guibg=NONE
hi LineNr ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE

"PARENTHESIS COMPLETION
let g:pear_tree_smart_openers = 1
let g:pear_tree_smart_closers = 1
let g:pear_tree_smart_backspace = 1

"OPEN LINES
nnoremap <silent> <leader>o :<C-u>call append(line("."),   repeat([""], v:count1))<CR>
nnoremap <silent> <leader>O :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>

"KEEP CENTER WHEN SEARCHING
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

"SYSTEM CLIPBOARD
nnoremap <leader>y <S-v>"+y
vnoremap <leader>y "+y
nnoremap <leader>p "+p
vnoremap <leader>p "_dP

"SELECT ALL
nnoremap <leader>a gg<S-v>G

"MOVE TEXT
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

"UNDO POINTS
inoremap , ,<C-g>u
inoremap . .<C-g>u
inoremap ! !<C-g>u
inoremap ? ?<C-g>u

"SWAP BRACES
noremap ( {
noremap ) }
noremap { (
noremap } )

"DISABLE ARROW KEYS
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap h <Nop>
noremap l <Nop>
