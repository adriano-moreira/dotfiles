source ~/.vimrc_base.vim

language POSIX

" plugins
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
"Plug 'dikiaap/minimalist'
Plug 'tomasiser/vim-code-dark'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()


"colorscheme minimalist
"let g:airline_theme='minimalist'

colorscheme codedark
let g:airline_theme = 'codedark'

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx


map <leader>t :NERDTreeToggle<enter>
map <leader>f :NERDTreeFind<enter>

map <a-left> gT
map <a-right> gt
