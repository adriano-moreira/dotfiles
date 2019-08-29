set number
set relativenumber

syntax enable
set mouse=a

set clipboard=unnamedplus

let mapleader = ' '

imap jj <Esc>
imap jk <Esc>
imap gg <Esc>gg
imap ZZ <Esc>ZZ
imap ZC <Esc>ZC

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
