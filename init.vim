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
set mouse=a
set termguicolors
" let t_Co=256
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


" ------------- Plugins ------------- "
" Theme - Plug 'wadackel/vim-dogrun'
" Theme - Plug 'morhetz/gruvbox'
" Theme - Plug 'Shadorain/shadotheme'
" Theme - Plug 'ghifarit53/tokyonight-vim'
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'alvan/vim-closetag'
Plug 'Yggdroot/indentLine'

"" Themes ""
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'wadackel/vim-dogrun'
Plug 'ghifarit53/tokyonight-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'Shadorain/shadotheme'
Plug 'morhetz/gruvbox'
call plug#end()

" ------------- Importaciones ------------- "
source ~/.config/nvim/themes/airline.vim
source ~/.config/nvim/plugins/coc-config.vim

" ------------- Plugin Config ------------- "

" Theme 
"let g:tokyonight_style = 'night'
"let g:tokyonight_enable_italic = 0
colorscheme nord
"colorscheme xshado

" Dracula Theme
"let g:dracula_bold = 0
"let g:dracula_italic = 0
"colorscheme dracula 

hi Normal guibg=NONE ctermbg=NONE
 


"$ NERDTree Config
nmap <Leader>b :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1 "Cerrar cuando abrimos un archivo"
let NERDTreeShowHidden=1 "Mostrar archivos ocultos"
let g:NERDTreeIgnore= ['^node_modules$']

"$ PrettierConfig
"command! -nargs=0 Prettier :CocCommand prettier.formatFile

let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-snippets',
  \ 'coc-prettier',
  \ 'coc-eslint',
  \ 'coc-css',
  \ 'coc-pyright',
  \ ]

"Cerrar tags automaticamente
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx, *.js, *.ts, *tsx, *.pug, *.hbs,*.ejs'

"codeLens.enable": false
