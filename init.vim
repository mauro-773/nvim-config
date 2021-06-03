"########################################################
"--------Config de vim--------"
"########################################################
syntax enable 
set number
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf-8
set showmatch
set relativenumber
set laststatus=2
set expandtab
set tabstop=2
set shiftwidth=2
let t_Co=256 
let mapleader = " "

" Moverse entre archivos con TAB
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>

" Salir del modo edicion
imap jk <Esc>
imap <C-c> <Esc>l

" Mueve bloques de codigo en modo visual o V-Line
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv 

" Mejor Indentación
vnoremap < <gv
vnoremap > >gv

" Salir del buffer actual
nmap <leader>bd :bdelete<CR>
" Guardar 
nmap <leader>w :w<CR>
" Salir 
nmap <leader>q :q<CR>
" Salir y Guardar
nmap <leader>wq :wq<CR>

let g:polyglot_disabled = ['autoindent']
"########################################################
"----------Plugins----------"
"########################################################
 
call plug#begin()

"# Tema
Plug 'morhetz/gruvbox'
"# Arbol de archivos
Plug 'preservim/nerdtree'
"# Navegar entre terminales
Plug 'christoomey/vim-tmux-navigator'
"# Autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"# Barra de estados
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"# Cerrar pares {} () []
Plug 'alvan/vim-closetag'

Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot'

call plug#end()

"IMPORTACIONES
source ~/.config/nvim/themes/airline.vim
source ~/.config/nvim/plugins/coc-config.vim

"########################################################
"--------Config de plugins---------"
"########################################################

colorscheme gruvbox 
let g:gruvbox_contrast_dark = "hard"

"$ Mapleader: Comando Principal
let mapleader=" "

"$ Buscar una palabra por 2 letras
nmap <Leader>s <Plug>(easymotion-s2)

"$ NERDTree Config
nmap <Leader>b :NERDTreeFind<CR> 
let NERDTreeQuitOnOpen=1 "Cerrar cuando abrimos un archivo"
let NERDTreeShowHidden=1 "Mostrar archivos ocultos"
let g:NERDTreeIgnore= ['^node_modules$']

"$ PrettierConfig
command! -nargs=0 Prettier :CocCommand prettier.formatFile

let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-snippets',
  \ 'coc-json',
  \ 'coc-pairs',
  \ 'coc-prettier',
  \ 'coc-eslint',
  \ 'coc-css',
  \ 'coc-sql',
  \ ]

"Cerrar tags automaticamente
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx, *.js, *.ts, *tsx, *.pug, *.hbs,*.ejs'
