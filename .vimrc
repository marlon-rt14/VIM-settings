set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=4
set relativenumber
set laststatus=2
set noshowmode

call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'

" IDE
Plug 'easymotion/vim-easymotion'

" NerdTree
Plug 'scrooloose/nerdtree'

" Navegar entre archivos abiertos
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

" gruvbox
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
" let g:deoplete#enable_at_startup = 1
" let g:jsx_ext_required = 0

let mapleader=" "

" easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" NerdTree
" <CR> significa enter
nmap <Leader>nt :NERDTreeFind<CR> 
let NERDTreeQuitOnOpen=1

" Atajos personalizados
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>qq :q!<CR>
nmap <Leader>wq :wq<CR>
nmap <Leader>l :ls<CR>
" nmap <Leader>b :bd<CR>

" Eliminar buffer
nmap <Leader>n :bnext<CR>
nmap <Leader>p :bprev<CR>
nmap <Leader>d :bdelete<CR>

imap { {}<left>
imap {{ {
imap [ []<left>
imap [[ [
imap ( ()<left>
imap (( (
" imap < </><left>
" imap << <

"Saltar una linea abajo sin separar la linea actual: ctrl + enter
imap <Char-13> <C-o>o

" Suprimir una palabra adelante desde el cursor con: ctrl + spr
imap <C-Del> <C-o>dw

" Eliminar una palabra haca atras desde el cursor con: ctrl + del
imap <Char-8> <C-o>db



