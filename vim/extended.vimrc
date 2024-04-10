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



" use <tab> to trigger completion and navigate to the next complete item for coc.nvim
" ============= TAB COMPLETION FIX ==============
 function! CheckBackspace() abort
     let col = col('.') - 1
     return !col || getline('.')[col - 1]  =~# '\s'
 endfunction

inoremap <silent><expr> <Tab>
    \ coc#pum#visible() ? coc#pum#next(1) :
    \ CheckBackspace() ? "\<Tab>" :
    \ coc#refresh()
" ========== END OF TAB COMPLETION FIX ==========

" ============= NERD TREE BINDS =================
inoremap <C-X> <Esc>:NERDTreeToggle<cr>
nnoremap <C-X> <Esc>:NERDTreeToggle<cr>
" =========== END OF NERD TREE BINDS ============



" colorscheme elflord, evening, onedark, codedark, gruvbox (remove the ones not used)
" set bg=dark                           " Sets background to dark for gruvbox and/or other colorschemes for terminal Vim
" let g:gruvbox_contrast_dark = 'soft'  " Set dark mode contrast to soft
" let g:airline_theme='onedark'
set guifont=Cascadia\ Code:h14

syntax on
filetype on

set clipboard=unnamed                    " copy/paste text from Vim from/to other applications
set backspace=indent,eol,start           " backspace has deletion functionality (like normal mode: <X>)
" set encoding=utf-8
set mouse=a                              " enables mouse scroll

set number                               " enables line numbers
" set relativenumber
nnoremap <C-Z> :set relativenumber!<CR>  " keybind toggle for relative number in normal mode

set hlsearch                             " Highlight search results
set incsearch                            " Incremental search
set ignorecase                           " Case-insensitive search
set smartcase                            " Case-sensitive if pattern has uppercase characters
set showmatch matchtime=20               " Highlight matching bracket pairs

set path+=**                             " Path now searches through its sub-directory recursively
set wildmenu                             " Shows a list of file extensions based on :find
set wildmode=longest:full,full

set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

set ruler
set cursorline
set cursorcolumn
set colorcolumn=80
set textwidth=80

" set guicursor=i:block                 " Enables vertical block for insert mode
let &t_SI = "\e[6 q"                    " Steady vertical bar in insert mode (Values: 1-6, Selected: 6)
let &t_EI = "\e[2 q"                    " Steady vertical block for normal and visual mode (Values: 1-6, Selected: 2)
