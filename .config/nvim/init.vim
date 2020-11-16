source ~/.vimrc_base.vim

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'tomasiser/vim-code-dark'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
call plug#end()


language POSIX

colorscheme codedark
let g:airline_theme = 'codedark'

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'



let g:lsc_auto_map = v:true
map <a-1> :NERDTreeToggle<enter>
map <leader>f :NERDTreeFind<enter>

map <a-left> gT
map <a-right> gt

nmap == :DartFmt<cr>
