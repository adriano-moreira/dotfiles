"language en_US

set incsearch hlsearch
set ignorecase smartcase
set number relativenumber

"set cursorline
"set cursorcolumn

set showmode
set autoread           " Automatically reload changes if detected

"enable mouse suport
set mouse=a

"
set clipboard=unnamedplus

"my leader key is <space>
let mapleader = ' '


imap jj <Esc>
imap jk <Esc>


imap ZZ <Esc>ZZ
imap ZC <Esc>ZC

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==


" Insert New line
nmap U o<Esc>

inoremap <c-l> <esc>A

" key bindings for quickly moving between windows
" h left, l right, k up, j down
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l
nmap <c-k> <c-w>k
nmap <c-j> <c-w>j

nnoremap <Leader>D yyp

" tabs navigation
nnoremap <a-h> gT
nnoremap <a-l> gt


" Quicker navigation
map H ^
map L $

nnoremap c "_c
nnoremap C "_C

" resizing a window split
nnoremap <left> <C-w>10<
nnoremap <down> <C-W>5-
nnoremap <up> <C-W>5+
nnoremap <right> <C-w>10>


noremap <Leader>G :vsp <cr> <c-]>
nnoremap <leader><leader> :wq<cr>
