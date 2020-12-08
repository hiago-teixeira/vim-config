syntax on
set number
set cursorline
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set complete+=kspell
set completeopt=menuone,longest
filetype plugin indent on
filetype plugin on

set guifont=Operator\ Mono

highlight htmlArg cterm=italic

call plug#begin('~/.vim/plugged')

Plug 'sonph/onehalf', {'rtp': 'vim/'}

Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/AutoComplPop'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'

call plug#end()

set t_Co=256
colorscheme onehalfdark
let g:airline_theme='onehalfdark'

let g:coc_global_extensions = [
    \ 'coc-phpls',
    \ 'coc-json',
    \ 'coc-css',
    \ 'coc-html',
    \ 'coc-sql',
    \ 'coc-tsserver',
    \ 'coc-clangd',
    \ 'coc-explorer'
\]

nmap <space>e :CocCommand explorer<CR>
