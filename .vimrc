
set rtp+=~/tabnine-vim

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
" set guioptions-=r
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

Plug 'neovim/nvim-lspconfig'

Plug 'simeji/winresizer'

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
  let g:airline#extensions#tabline#show_tab_nr = 1
  let g:airline#extensions#tabline#formatter = 'unique_tail'
  let g:airline#extensions#tabline#show_tabs = 1
  let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
  let g:airline#extensions#tabline#show_tab_count = 1
  let g:airline_powerline_fonts = 1
" }}}


let mapleader=" "

" easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" NerdTree
nmap <Leader>nt :NERDTreeFind<CR> 
let NERDTreeQuitOnOpen=1

" Atajos personalizados
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>qq :q!<CR>
nmap <Leader>wq :wq<CR>

"   Redimensionar ventanas
nmap <Leader>r :WinResizerStartResize<CR>
let g:winresizer_horiz_resize = 1
let g:winresizer_vert_resize = 1
let g:winresizer_start_key = '<C-R>'

" Buffers
nmap <Leader>n :bnext<CR>
nmap <Leader>p :bprev<CR>
nmap <Leader>bd :bdelete<CR>
nmap <Leader>l :ls<CR>

"-- AUTOCLOSE --  
"autoclose and position cursor to write text inside  
inoremap " ""<left>
inoremap ' ''<left>
inoremap ` ``<left>
inoremap { {}<left>
inoremap [ []<left>
inoremap ( ()<left>
"autoclose with ; and position cursor to write text inside  
inoremap "; "";<left><left>
inoremap '; '';<left><left>
inoremap `; ``;<left><left>
inoremap {; {};<left><left>
inoremap [; [];<left><left>
inoremap (; ();<left><left>
"autoclose with , and position cursor to write text inside  
inoremap ", "",<left><left>
inoremap ', '',<left><left>
inoremap `, ``,<left><left>
inoremap {, {},<left><left>
inoremap [, [],<left><left>
inoremap (, (),<left><left>
"autoclose and position cursor after  
inoremap '<tab> ''  
inoremap `<tab> ``  
inoremap "<tab> ""
inoremap (<tab> ()  
inoremap [<tab> []  
inoremap {<tab> {}  
"autoclose with ; and position cursor after  
inoremap ';<tab> '';  
inoremap `;<tab> ``;  
inoremap ";<tab> "";  
inoremap (;<tab> ();  
inoremap [;<tab> [];  
inoremap {;<tab> {};  
"autoclose with , and position cursor after  
inoremap ',<tab> '',  
inoremap `,<tab> ``,  
inoremap ",<tab> "",
inoremap (,<tab> (),  
inoremap [,<tab> [],  
inoremap {,<tab> {},  
"autoclose 2 lines below and position cursor in the middle   
inoremap '<CR> '<CR>'<ESC>O  
inoremap `<CR> `<CR>`<ESC>O  
inoremap "<CR> "<CR>"<ESC>O  
inoremap (<CR> (<CR>)<ESC>O  
inoremap [<CR> [<CR>]<ESC>O  
inoremap {<CR> {<CR>}<ESC>O  
"autoclose 2 lines below adding ; and position cursor in the middle   
inoremap ';<CR> '<CR>';<ESC>O  
inoremap `;<CR> `<CR>`;<ESC>O  
inoremap ";<CR> "<CR>";<ESC>O  
inoremap (;<CR> (<CR>);<ESC>O  
inoremap [;<CR> [<CR>];<ESC>O  
inoremap {;<CR> {<CR>};<ESC>O  
"autoclose 2 lines below adding , and position cursor in the middle   
inoremap ',<CR> '<CR>',<ESC>O  
inoremap `,<CR> `<CR>`,<ESC>O  
inoremap ",<CR> "<CR>",<ESC>O  
inoremap (,<CR> (<CR>),<ESC>O  
inoremap [,<CR> [<CR>],<ESC>O  
inoremap {,<CR> {<CR>},<ESC>O



" Suprimir una palabra adelante desde el cursor con: ctrl + spr
imap <C-Del> <C-o>dw

" Eliminar una palabra hacia atras desde el cursor con: ctrl + del
imap <Char-8> <C-o>db

"Saltar una linea abajo sin separar la linea actual: shift + m 
imap <C-L> <C-o>o

