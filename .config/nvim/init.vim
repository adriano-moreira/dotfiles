syntax enable
set number
set relativenumber
set mouse=a


imap jj <Esc>
nmap oo o<Esc>k
nmap ooo o<Enter>
nmap OO O<Esc>j

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv


call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'
Plug 'dikiaap/minimalist'
Plug 'scrooloose/nerdtree'
call plug#end()

colorscheme minimalist

au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

map <A-1> :NERDTreeToggle<enter>

