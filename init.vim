set number relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set incsearch
set nocompatible
set noshowmode
set colorcolumn=81
filetype plugin on
syntax on
set so=12

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'vimwiki/vimwiki'
Plug 'romgrk/doom-one.vim'
Plug 'morhetz/gruvbox'
Plug 'tmsvg/pear-tree'

call plug#end()

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
iabbrev </ </<C-X><C-O>

let g:vimwiki_global_ext = 0
let g:vimwiki_list = [{'path': '~/repos/vimwiki/text/', 'path_html': '~/repos/vimwiki/vimwiki_html/', 
        \ 'template_path': '~/repos/vimwiki/templates/', 'template_default': 'default'}]

nnoremap <SPACE> <Nop>
let mapleader = " "
nnoremap Y y$
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:lightline = {'colorscheme': 'one'}

"COLORS
"let g:gruvbox_invert_selection=0
"let g:gruvbox_contrast_dark='hard'
"set bg=dark
set termguicolors
"colorscheme gruvbox
colorscheme doom-one
hi Normal guibg=none ctermbg=none
hi LineNr guibg=none ctermbg=none
hi Folded guibg=none ctermbg=none
hi NonText guibg=none ctermbg=none
hi SpecialKey guibg=none ctermbg=none
hi VertSplit guibg=none ctermbg=none
hi SignColumn guibg=none ctermbg=none
hi EndOfBuffer guibg=none ctermbg=none
hi CursorLineNr guibg=none ctermbg=none

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

"DISABLE ARROW KEYS
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
