call plug#begin()

Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'vim-test/vim-test'
Plug 'lervag/vimtex'
Plug 'morhetz/gruvbox'

call plug#end()

filetype on
syntax on
" colorscheme onedark
colorscheme gruvbox
" set bg=dark
" Set dark mode contrast to soft
" let g:gruvbox_contrast_dark = 'soft'
set showmatch matchtime=20

" use <tab> to trigger completion and navigate to the next complete item
 function! CheckBackspace() abort
     let col = col('.') - 1
     return !col || getline('.')[col - 1]  =~# '\s'
 endfunction

inoremap <silent><expr> <Tab>
    \ coc#pum#visible() ? coc#pum#next(1) :
    \ CheckBackspace() ? "\<Tab>" :
    \ coc#refresh()

inoremap <C-X> <Esc>:NERDTreeToggle<cr>
nnoremap <C-X> <Esc>:NERDTreeToggle<cr>

" let g:airline_theme='onedark'

set clipboard=unnamed
set backspace=indent,eol,start
" set encoding=utf-8

set guifont=Cascadia\ Code:h14

set number
" set relativenumber
nnoremap <C-Z> :set relativenumber!<CR>
set ruler
set mouse=a

set hlsearch     " Highlight search results
set incsearch    " Incremental search
set ignorecase   " Case-insensitive search
set smartcase    " Case-sensitive if pattern has uppercase characters

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
