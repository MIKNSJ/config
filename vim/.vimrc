call plug#begin()

Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'

call plug#end()

syntax on
colorscheme onedark

" use <tab> to trigger completion and navigate to the next complete item
 function! CheckBackspace() abort
     let col = col('.') - 1
     return !col || getline('.')[col - 1]  =~# '\s'
 endfunction

inoremap <silent><expr> <Tab>
    \ coc#pum#visible() ? coc#pum#next(1) :
    \ CheckBackspace() ? "\<Tab>" :
    \ coc#refresh()

inoremap <c-b> <Esc>:NERDTreeToggle<cr>
nnoremap <c-b> <Esc>:NERDTreeToggle<cr>

" let g:airline_theme='onedark'

set clipboard=unnamed
set backspace=indent,eol,start

set guifont=Cascadia\ Code:h14

set number
" set relativenumber
set ruler
set mouse=a

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

set cursorline
set cursorcolumn
set colorcolumn=80

set autoindent

let &t_SI = "\e[2 q"
let &t_EI = "\e[2 q"
