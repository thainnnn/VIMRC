" Syntax
syntax on
syntax enable
filetype on
filetype plugin on
filetype indent on

" Set
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set autoread
set ignorecase
set smartcase
set showcmd
set showmatch
set hlsearch
set incsearch
set clipboard=unnamed
set exrc
set guicursor=
set number
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set nowrap
set nobackup
set termguicolors
set showmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set cmdheight=1
set updatetime=50
set shortmess+=c
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set guifont=Consolas:h13
set lines=21
set columns=75
set cursorline
set splitright
set backspace=indent,eol,start
set backspace=2
" Status line
set laststatus=2
hi statusline guibg=White ctermfg=8 guifg=DarkSlateGray ctermbg=15
let g:currentmode={
       \ 'n'  : 'NORMAL ',
       \ 'v'  : 'VISUAL ',
       \ 'V'  : 'V·Line ',
       \ "\<C-V>" : 'V·Block ',
       \ 'i'  : 'INSERT ',
       \ 'R'  : 'R ',
       \ 'Rv' : 'V·Replace ',
       \ 'c'  : 'Command ',
       \}
set statusline+=\ %{toupper(g:currentmode[mode()])}
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%=
set statusline+=\ ascii\:%b\ %l\:\%c\ %p%% 

" GUI_OPTION
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" COMPILE AND RUN
autocmd filetype cpp nnoremap <F9> :w <bar> ! g++ -std=c++14 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <C-F9> :! %:r<CR>
autocmd filetype cpp nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $
autocmd filetype pascal nnoremap <F9> :w <bar> ! fpc %<CR>
autocmd filetype pascal nnoremap <C-F9> :! %:r<CR>

" VIM-PLUG
call plug#begin()
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'voldikss/vim-floaterm'
call plug#end()

" MAP
let mapleader = ","

" NERD_TREE
nnoremap nt :NERDTree<CR>
nnoremap nd :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

" Any
inoremap jj <esc>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><
cnoremap <c-h> <left>
cnoremap <c-j> <down>
cnoremap <c-k> <up>
cnoremap <c-l> <right>
map qa :qa<CR>
map q! :q!<CR>
map qq :q<CR>
autocmd filetype cpp nnoremap main :s/^/#include <iostream>\r#include <vector>\r#include <string.h>\r#include <algorithm>\rusing namespace std;\r\rint main(){\r\r    return 0;\r}<CR>
autocmd filetype pascal nnoremap main :s/^/uses crt;\rvar\r\rBEGIN\r\rEND.<CR>

" PLUGINS ---------------------------------------------------------------- {{{

" Plugin code goes here.

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}
