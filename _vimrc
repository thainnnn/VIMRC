" Syntax
syntax on

" Set
set clipboard=unnamed
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set autoindent
set smartindent
set cindent

set termguicolors
set number
set colorcolumn=80
set mouse=a

set incsearch
set showmatch
set hlsearch
set ignorecase
set autoread
set showcmd
" set guifont=Consolas:h13
set guifont=Terminal:h14
" set lines=21
" set columns=75
set splitright
set backspace=2
set wildmenu
set wildmode=list:longest
set noerrorbells
set nowrap
set nobackup
set updatetime=50
set history=1000
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set backspace=indent,eol,start
set signcolumn=yes
set laststatus=2
set cmdheight=1
" colorscheme peachpuff


" GUI_OPTION
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar


" COMPILE AND RUN
autocmd filetype cpp nnoremap <F9> :w <bar> ! g++ -std=c++11 % -o %:r -Werror -O2 -s -static -Wl,--stack,16777216<CR>
autocmd filetype cpp nnoremap <C-F9> :! %:r<CR>
autocmd filetype cpp nnoremap <F10> :! %:r<input.txt>output.txt<CR>
autocmd filetype cpp nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $
autocmd filetype pascal nnoremap <F9> :w <bar> ! fpc %<CR>
autocmd filetype pascal nnoremap <C-F9> :! %:r<CR>
autocmd filetype cpp nnoremap main :s/^/\/\*\r                  \_\r               \_ooOoo\_\r              o8888888o\r              88\" \. \"88\r              \(\| \-\_\- \|\)\r              O\\  \=  \/O\r           \_\_\_\_\/\`\-\-\-\'\\\_\_\_\_\r         \.\'  \\\\\|     \|\/\/  \`\.\r        \/  \\\\\|\|\|  \:  \|\|\|\/\/  \\\r       \/  \_\|\|\|\|\| \-\:\- \|\|\|\|\|\_  \\\r       \|   \| \\\\\\  \-  \/\'\| \|   \|\r       \| \\\_\|  \`\\\`\-\-\-\'\/\/  \|\_\/ \|\r       \\  \.\-\\\_\_ \`\-\. \-\'\_\_\/\-\.  \/\r     \_\_\_\`\. \.\'  \/\-\-\.\-\-\\  \`\. \.\'\_\_\_\r  \.\"\" \'\<  \`\.\_\_\_\\\_\<\|\>\_\/\_\_\_\.\' \_\> \\\"\"\.\r \| \| \:  \`\- \\\`\. \;\`\. \_\/\; \.\'\/ \/  \.\' \; \|\r \\  \\ \`\-\.   \\\_\\\_\`\. \_\.\'\_\/\_\/  \-\' \_\.\' \/\r\=\=\`\-\.\`\_\_\_\`\-\.\_\_\\ \\\_\_\_  \/\_\_\.\-\'\_\.\'\_\.\-\'\=\=\r               \`\=\-\-\=\-\'\rMONG NGUOI DO CHO CODE CUA CON KHONG BUG\r\*\/\r\r\r#include <iostream>\r#include <vector>\r#include <string.h>\r#include <algorithm>\rusing namespace std;\r\rint main(){\r\r    return 0;\r}<CR>
autocmd filetype pascal nnoremap main :s/^/\{\r                  \_\r               \_ooOoo\_\r              o8888888o\r              88\" \. \"88\r              \(\| \-\_\- \|\)\r              O\\  \=  \/O\r           \_\_\_\_\/\`\-\-\-\'\\\_\_\_\_\r         \.\'  \\\\\|     \|\/\/  \`\.\r        \/  \\\\\|\|\|  \:  \|\|\|\/\/  \\\r       \/  \_\|\|\|\|\| \-\:\- \|\|\|\|\|\_  \\\r       \|   \| \\\\\\  \-  \/\'\| \|   \|\r       \| \\\_\|  \`\\\`\-\-\-\'\/\/  \|\_\/ \|\r       \\  \.\-\\\_\_ \`\-\. \-\'\_\_\/\-\.  \/\r     \_\_\_\`\. \.\'  \/\-\-\.\-\-\\  \`\. \.\'\_\_\_\r  \.\"\" \'\<  \`\.\_\_\_\\\_\<\|\>\_\/\_\_\_\.\' \_\> \\\"\"\.\r \| \| \:  \`\- \\\`\. \;\`\. \_\/\; \.\'\/ \/  \.\' \; \|\r \\  \\ \`\-\.   \\\_\\\_\`\. \_\.\'\_\/\_\/  \-\' \_\.\' \/\r\=\=\`\-\.\`\_\_\_\`\-\.\_\_\\ \\\_\_\_  \/\_\_\.\-\'\_\.\'\_\.\-\'\=\=\r               \`\=\-\-\=\-\'\rMONG NGUOI DO CHO CODE CUA CON KHONG BUG\r\}\r\r\ruses crt\r\rvar\r\rBEGIN\r\r\rEND.\r<CR>
" autocmd filetype cpp nnoremap main :s/^/#include <iostream>\r#include <vector>\r#include <string.h>\r#include <algorithm>\rusing namespace std;\r\rint main(){\r\r    return 0;\r}<CR>
" autocmd filetype pascal nnoremap main :s/^/uses crt;\rvar\r\rBEGIN\r\rEND.<CR>


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
nnoremap <Esc><Esc> :nohl<CR> 
