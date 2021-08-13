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
" set showtabline=2

call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'

" IDE
Plug 'easymotion/vim-easymotion'

" NerdTree
Plug 'scrooloose/nerdtree'

" Navegar entre archivos abiertos
Plug 'christoomey/vim-tmux-navigator'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tomasr/molokai'
" Plug 'sonph/onehalf'

call plug#end()

" gruvbox

colorscheme molokai
" let g:gruvbox_contrast_dark = "hard"
" let g:deoplete#enable_at_startup = 1
" let g:jsx_ext_required = 0

" Airline Setup {{{
  let g:airline_theme='wombat'
  let g:airline#extensions#tabline#enabled = 1 "Show tabs if only one is enabled.
  let g:airline#extensions#tabline#show_splits = 1 "enable/disable displaying open splits per tab (only when tabs are opened). >
  let g:airline#extensions#tabline#show_buffers = 1 " enable/disable displaying buffers with a single tab
  let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
  let g:airline#extensions#tabline#formatter = 'unique_tail'
  let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
  let g:airline_powerline_fonts = 1
" }}}


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
nmap <Leader>bd :bdelete<CR>

imap { {}<left><CR><CR><up><TAB>
" imap {{ {
imap [ []<left>
" imap [[ [
imap ( ()<left>
" imap (( (
" imap < </><left>
" imap << <

"Saltar una linea abajo sin separar la linea actual: shift + m 
" imap <S-M> <C-o>o


" Suprimir una palabra adelante desde el cursor con: ctrl + spr
imap <C-Del> <C-o>dw

" Eliminar una palabra haca atras desde el cursor con: ctrl + del
imap <Char-8> <C-o>db

imap <C-L> <C-o>2l

