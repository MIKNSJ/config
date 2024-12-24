call plug#begin()

  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

call plug#end()

colorscheme elflord                      " If I had to choose a default VIM theme.
set guifont=Consolas:h12                 " If I had to choose a default font and size for Windows.

syntax on
filetype on

set clipboard=unnamed                    " copy/paste text from Vim from/to other applications
set backspace=indent,eol,start           " backspace has deletion functionality (like normal mode: <X>)
set mouse=a                              " enables mouse scroll

set number                               " enables line numbers
" set relativenumber
nnoremap <C-Z> :set relativenumber!<CR>  " keybind toggle for relative number in normal mode

" [coc-nvim]: Use tab for trigger completion with characters ahead and navigate
function! CheckBackspace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
    \ coc#pum#visible() ? coc#pum#next(1) :
    \ CheckBackspace() ? "\<Tab>" :
    \ coc#refresh()

inoremap ( ()<Left>
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Left>
inoremap [ []<Left>
inoremap < <><Left>
inoremap ' ''<Left>
inoremap " ""<Left>

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
" set cursorline                         " highlights current line (row)
" set cursorcolumn                       " highlights current column
set colorcolumn=80                       " highlights character line limit (default color: red)
set textwidth=80                         " wraps text only for windowed mode

" set guicursor=i:block                 " Enables vertical block for insert mode
let &t_SI = "\e[6 q"                    " Steady vertical bar in insert mode (Values: 1-6, Selected: 6)
let &t_EI = "\e[2 q"                    " Steady vertical block for normal and visual mode (Values: 1-6, Selected: 2)
