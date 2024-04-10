call plug#begin()
    Plug 'lervag/vimtex'
    Plug 'preservim/nerdtree'
call plug#end()

filetype plugin indent on



" let g:vimtex_view_general_viewer = 'SumatraPDF.exe'
let g:vimtex_view_method = 'sioyek'
let g:vimtex_view_sioyek_exe = 'sioyek.exe'



colorscheme elflord
set guifont=Calibri:h14

syntax on
filetype on

set clipboard=unnamed                    " copy/paste text from Vim from/to other applications
set backspace=indent,eol,start           " backspace has deletion functionality (like normal mode: <X>)
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

" set guicursor=i:block                 " Enables vertical block for insert mode
let &t_SI = "\e[6 q"                    " Steady vertical bar in insert mode (Values: 1-6, Selected: 6)
let &t_EI = "\e[2 q"                    " Steady vertical block for normal and visual mode (Values: 1-6, Selected: 2)
