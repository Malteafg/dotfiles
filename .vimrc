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

call plug#end()

let g:gruvbox_invert_selection=0
let g:gruvbox_contrast_dark='soft'
set bg=dark
colorscheme gruvbox

hi Normal ctermbg=NONE guibg=NONE
hi LineNr ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE

nnoremap <silent> <leader>o :<C-u>call append(line("."),   repeat([""], v:count1))<CR>
nnoremap <silent> <leader>O :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>

inoremap uy <Esc>
inoremap yu <Esc>

noremap ( {
noremap ) }
noremap { (
noremap } )

"highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

"set langnoremap
"set langmap=qq,dw,re,wr,mt,jy,fu,ui,po,\\;p,aa,ss,hd,tf,gg,yh,nj,ek,ol,i\\;,zz,xx,cc,vv,bb,kn,lm,QQ,DW,RE,WR,MT,JY,FU,UI,PO,:P,AA,SS,HD,TF,GG,YH,NJ,EK,OL,I:,ZZ,XX,CC,VV,BB,KN,LM

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

"vim-plug

