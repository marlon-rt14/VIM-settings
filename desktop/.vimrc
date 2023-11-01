syntax on
filetype plugin indent on

set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
"set cursorline
set encoding=utf-8
set showmatch
set sw=2
set softtabstop=2
set relativenumber
set laststatus=2
set noshowmode
set autoindent
set cindent
set smartindent
set splitright
set splitbelow
set tabline=%<%t\ %h%m%r%=%D(%l/%L,%c%V) "habilitar pestanias"
set foldmethod=indent
set foldlevelstart=99
set foldcolumn=2
"Guardar el collapso o vista de los archivos para que se vuelvan a abrir como
"antes"
" autocmd BufWinLeave * mkview
" autocmd BufWinEnter * silent! loadview


set termguicolors
set t_Co=256
set guioptions=a
hi Normal ctermbg=none guibg=none

"set background=dark
"highlight Normal guibg=Black
"set guioptions-=r
" set showtabline=2

call plug#begin('~/.vim/plugged')

"Autocomplete"
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Themes
" Plug 'tomasr/molokai'
" Plug 'dracula/vim'
" Plug 'nanotech/jellybeans.vim'
" Plug 'ayu-theme/ayu-vim' 
" Plug 'danilo-augusto/vim-afterglow'
Plug 'ray-x/aurora'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'ryanoasis/vim-devicons'

" IDE
Plug 'easymotion/vim-easymotion'

" NerdTree
Plug 'scrooloose/nerdtree'

" Navegar entre archivos abiertos
Plug 'christoomey/vim-tmux-navigator'

"CSS color"
Plug 'ap/vim-css-color'

"####################################################################"

"Git"
Plug 'tpope/vim-fugitive'

"GitGutter"
Plug 'airblade/vim-gitgutter'

"Visuzlize Git branch"
""Plug 'rbong/vim-flog'

"Indent Guides"
""Plug 'nathanaelkane/vim-indent-guides'

"Mostrar los buffers en flecha"
Plug 'powerline/powerline'


"Icons"
Plug 'ryanoasis/vim-devicons'

"Ver errores de python en tiempo real"

"#################################################################"

"surround"
Plug 'tpope/vim-surround'

"Codeium"
Plug 'Exafunction/codeium.vim'

"Busca archivos"
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


" Ident lines, mostrar una linea de guia en el scope"
Plug 'Yggdroot/indentLine' 

"Redimensionar buffers"
Plug 'simeji/winresizer'

"Mutli cursor"
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"Crear etiquetas html con atajos"
Plug 'mattn/emmet-vim'

"Comentarios"
Plug 'tpope/vim-commentary'

"Auto rename tag"
Plug 'AndrewRadev/tagalong.vim'

"multiple terminal"
Plug 'kassio/neoterm'

"PLUGINS PARA REACTJS"
"formatear e identar codigo"
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
"ver los error en a lado del codigo"
"js
Plug 'dense-analysis/ale' 
"python
Plug 'davidhalter/jedi-vim'
"Snippets"
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

call plug#end()



let mapleader=" "

" CONFIGURAR TEMAS
" # AYU 
"colorscheme ayu
"let ayucolor='dark'

" # jellybeans 
"colorscheme jellybeans

" # aurora 
colorscheme aurora

" # afterglow
"colorscheme afterglow
"let g:airline_theme = 'afterglow'
"$ Usar esta opcion si el entorno como una oficina causa deslumbramiento, esta
"$ opcion no funcionara si g:inherit_background esta activado"
"let g:afterglow_blackout=1
"let g:afterglow_inherit_background=1
"let g:afterglow_italic_comments=1

" Ident Line Setup
" let g:indentLine_setColors = 0
" Vim and GVim
let g:indentLine_char = '│'
let g:indentLine_color_gui = '#555555'
" let g:indentLine_bgcolor_gui = '#FF5F00'


"vim airline
"para ver en forma de flecha hay que instalar vim-pathogen"
"let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1 "activar la fuente para ver en flecha"
"let g:airline_statusline_ontop=1
"let g:airline_section_z = ''
"let g:airline_section_y = ''
" Personalizar la sección Z de la barra de estado
let g:airline_section_z = '% l/%L:%c'
let g:airline_section_z_padding = 2
"let g:airline_section_y = expand("%:e")
let g:airline_section_y = '%{strftime("%H:%M")}'
"behelit bubblegum kolor "
" let g:airline_theme='behelit'
let g:airline_theme='deus'

"Configuracion de pestanias"
noremap <A-j> :tabprevious<CR>
noremap <A-k> :tabnext<CR>
noremap <A-h> :tabfirst<CR>
noremap <A-l> :tablast<CR>
noremap <A-w> :tabclose<CR>

"terminal"
" noremap <Leader>t :terminal<CR>
noremap <Leader>t :Tnew<CR>

"SnipMate deprecate"
let g:snipMate = { 'snippet_version' : 1 }

"vim-commentary"
autocmd FileType javascript setlocal commentstring={/*\ %s\ */}
autocmd FileType typescriptreact setlocal commentstring={/*\ %s\ */}
vmap . <Plug>Commentary

"Autocomplete custom KEY map Tabnine"
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

"FZF finder"
noremap <C-P> :GFiles<CR>
"Busqueda de texto en el archivo actual"
noremap <Leader>bl :BLines<CR>
"Busqueda de texto globalmente"
noremap <Leader>rg :Rg<CR> 
noremap <Leader>l :Buffers<CR>

" Buffers
"nmap <Leader>n :bnext<CR>
"nmap <Leader>p :bprev<CR>
nmap <Leader>x :bdelete<CR>
" nmap <Leader>l :ls<CR>
" nmap <Leader>bb :buffers<CR>


" easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" NerdTree
nmap <Leader>nt :NERDTreeFind<CR> 
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

" Atajos personalizados
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>Q :q!<CR>
nmap <Leader>W :wq<CR>


"Instalar extensiones COC"
"pending coc-pylsp coc-ruff
let g:coc_global_extensions = ['coc-tabnine', 'coc-java', 'coc-emmet', 'coc-eslint', 'coc-graphql','coc-yaml', 'coc-docker', 'coc-html-css-support', 'coc-htmlhint', 'coc-json', 'coc-html', 'coc-css', 'coc-tsserver', 'coc-python', 'coc-pyright', 'coc-jedi',] 

" Redimensionar ventanas
nmap <Leader>wr :WinResizerStartResize<CR>
let g:winresizer_horiz_resize = 3
let g:winresizer_vert_resize = 3
"para que dejar el comando control + e como socroll down"
let g:winresizer_start_key = '<C-R>'
"nmap <C-w><C-r>wr :WinResizerStartResize<CR><CR>


" emmet-vim
let g:user_emmet_leader_key='<C-Z>'
let g:user_emmet_install_global = 0
autocmd FileType html,css,jsx,tsx EmmetInstall
let g:user_emmet_mode='a'
let g:user_emmet_settings = {
\  'variables': {'lang': 'en'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': { 
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."<head>\n"
\              ."\t<meta charset=\"${charset}\">\n"
\	       ."\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n"
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."\t<title>Document</title>\n"
\              ."</head>\n"
\              ."<body>\n\t${child}|\n</body>\n"
\              ."</html>",
\    },
\  },
\}

"Copiar al portapapeles desde nvim"
vnoremap <C-Y> :'<,'>w !xclip -selection clipboard<CR>
"vnoremap <C-Y> :'<,'>w !echo -n "\%V" | xclip -selection clipboard<CR>

"vim-prettier formatear documento"
nnoremap <Leader>fa :Prettier<CR>:w<CR>
vnoremap <Leader>ff :PrettierFragment<CR>:w<CR>
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
"let g:prettier#config#print_width = 80
let g:prettier#config#tab_width = &softtabstop
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#bracket_spacing = 'false'

"-- AUTOCLOSE --  
"autoclose and position cursor to write text inside  
inoremap " ""<left>
inoremap ' ''<left>
inoremap ` ``<left>
inoremap { {}<left>
inoremap [ []<left>
inoremap ( ()<left>

"autoclose with ; and position cursor to write text inside  
" inoremap "; "";<left><left>
" inoremap '; '';<left><left>
" inoremap `; ``;<left><left>
" inoremap {; {};<left><left>
" inoremap [; [];<left><left>
" inoremap (; ();<left><left>

"autoclose with , and position cursor to write text inside  
" inoremap ", "",<left><left>
" inoremap ', '',<left><left>
" inoremap `, ``,<left><left>
" inoremap {, {},<left><left>
" inoremap [, [],<left><left>
" inoremap (, (),<left><left>

"autoclose and position cursor after  
"inoremap '<tab> ''  
"inoremap `<tab> ``  
"inoremap "<tab> ""
"inoremap (<tab> ()  
"inoremap [<tab> []  
"inoremap {<tab> {}  

"autoclose with ; and position cursor after  
" inoremap ';<tab> '';  
" inoremap `;<tab> ``;  
" inoremap ";<tab> "";  
" inoremap (;<tab> ();  
" inoremap [;<tab> [];  
" inoremap {;<tab> {};  

"autoclose with , and position cursor after  
" inoremap ',<tab> '',  
" inoremap `,<tab> ``,  
" inoremap ",<tab> "",
" inoremap (,<tab> (),  
" inoremap [,<tab> [],  
" inoremap {,<tab> {},  

"autoclose 2 lines below and position cursor in the middle   
"inoremap '<CR> '<CR>'<ESC>O  
"inoremap `<CR> `<CR>`<ESC>O  
"inoremap "<CR> "<CR>"<ESC>O  
"inoremap (<CR> (<CR>)<ESC>O  
"inoremap [<CR> [<CR>]<ESC>O  
"inoremap {<CR> {<CR>}<ESC>O  

"autoclose 2 lines below adding ; and position cursor in the middle   
" inoremap ';<CR> '<CR>';<ESC>O  
" inoremap `;<CR> `<CR>`;<ESC>O  
" inoremap ";<CR> "<CR>";<ESC>O  
" inoremap (;<CR> (<CR>);<ESC>O  
" inoremap [;<CR> [<CR>];<ESC>O  
" inoremap {;<CR> {<CR>};<ESC>O  

"autoclose 2 lines below adding , and position cursor in the middle   
" inoremap ',<CR> '<CR>',<ESC>O  
" inoremap `,<CR> `<CR>`,<ESC>O  
" inoremap ",<CR> "<CR>",<ESC>O  
" inoremap (,<CR> (<CR>),<ESC>O  
" inoremap [,<CR> [<CR>],<ESC>O  
" inoremap {,<CR> {<CR>},<ESC>O



" Suprimir una palabra adelante desde el cursor con: ctrl + spr
inoremap <C-Del> <C-o>dw

" Eliminar una palabra hacia atras desde el cursor con: ctrl + del
inoremap <Char-8> <C-W>

"Saltar una linea abajo sin separar la linea actual: shift + m 
imap <C-L> <C-o>o

"Duplicar la lina actual"
" nmap <Leader>d :t.<CR>
nmap <M-d> :t.<CR>

"Convertir a mayuscula, minuscula y oracion"
vnoremap U :<c-u>execute "normal! gU"<cr>gv
vnoremap u :<c-u>execute "normal! gu"<cr>gv
vnoremap S :<c-u>execute "normal! gUw"<cr>gv

"inoremap <div<Char-62> <div></div><left><left><left><left><left><left>
"inoremap <div<Char-62><Char-62> <div><CR></div><ESC>O

"neoterm"
set nocompatible
filetype off
let &runtimepath.=',~/.vim/bundle/neoterm'
filetype plugin on
let g:neoterm_default_mod='vertical'
""let g:neoterm_autoscroll=1

"ALE"
"let g:ale_python_pylint_executable = '~/.local/bin/pylint'
"let g:ale_python_pylint_executable = '~/.local/bin/flake8'

