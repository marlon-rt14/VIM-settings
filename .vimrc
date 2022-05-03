
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
set sw=2
set relativenumber
set laststatus=2
set noshowmode
set autoindent
set cindent
set smartindent

set termguicolors
set t_Co=256
" set background=dark
highlight Normal guibg=Black
" set guioptions-=r
" set showtabline=2

call plug#begin('~/.vim/plugged')

" Themes
" Plug 'tomasr/molokai'
Plug 'dracula/vim'
Plug 'nanotech/jellybeans.vim'
Plug 'ayu-theme/ayu-vim' 
Plug 'zacanger/angr.vim'
Plug 'danilo-augusto/vim-afterglow'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" { wombat, 
    " Plug 'flazz/vim-colorschemes'
    " Plug 'mhartington/oceanic-next'
" }


" IDE
Plug 'easymotion/vim-easymotion'

" NerdTree
Plug 'scrooloose/nerdtree'

" Navegar entre archivos abiertos
Plug 'christoomey/vim-tmux-navigator'

Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" Ident lines"
Plug 'Yggdroot/indentLine' 

Plug 'simeji/winresizer'

Plug 'terryma/vim-multiple-cursors'

Plug 'mattn/emmet-vim'

call plug#end()

let mapleader=" "

" CONFIGURAR TEMAS
colorscheme ayu
"
" molokai
" let g:gruvbox_contrast_dark = "hard
" let g:deoplete#enable_at_startup = 1
" let g:jsx_ext_required = 0

" AYU"
let ayucolor='dark'

" Afterglow"
" let g:airline_theme='afterglow'
" let g:afterglow_blackout=1
" let g:afterglow_inherit_background=1

" Ident Line Setup {{{"
    " let g:indentLine_setColors = 0
    " Vim and GVim
    let g:indentLine_char = '│'
    " GVim
    let g:indentLine_color_gui = '#555555'
    " let g:indentLine_bgcolor_gui = '#FF5F00'
" }}}

" vim-multiple-cursors (multi cursor){{{"

" }}}

" Airline Setup {{{
  " let g:airline_theme='tomorrow'
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
" Buffers
nmap <Leader>n :bnext<CR>
nmap <Leader>bb :buffers<CR>
nmap <Leader>x :buffer
nmap <Leader>p :bprev<CR>
nmap <Leader>bd :bdelete<CR>
nmap <Leader>l :ls<CR>

"   Redimensionar ventanas
nmap <Leader>wr :WinResizerStartResize<CR>
let g:winresizer_horiz_resize = 1
let g:winresizer_vert_resize = 1
let g:winresizer_start_key = '<C-R>'

" emmet-vim
let g:user_emmet_leader_key='<C-Z>,'
let g:user_emmet_install_global = 1
let g:user_emmet_mode='a'

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
imap <Char-8> <ESC>db i

"Saltar una linea abajo sin separar la linea actual: shift + m 
imap <C-L> <C-o>o

"Duplicar la lina actual"
nmap <Leader>d :t.<CR>

inoremap <div<Char-62> <div></div><left><left><left><left><left><left>
inoremap <div<Char-62><Char-62> <div><CR></div><ESC>O
