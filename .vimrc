source ~/.vim/include/plugins

set nocompatible
colorscheme seoul256

filetype off
filetype plugin indent on
syntax on

set nowrap
set relativenumber
set fo-=t

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set autoindent
set copyindent

set nobackup
set writebackup
set noswapfile

set pastetoggle=<F7>
set laststatus=2

" undo history between sessions
set undofile
set undodir=~/.vim/undodir

" highlight only line longer then 80
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" spelling
map <C-M> :w!<CR>:!aspell -c %<CR>:e! %<CR>

" Powerline
let g:airline_theme = 'light'
set t_Co=256

" Ctrlp
" let g:loaded_ctrlp = 1 " disable Ctrlp plugin
let g:ctrlp_regexp = 1
let g:ctrlp_switch_buffer = 'Et' " if file is open, jump to its buffer

" neocomplete
if has("lua")
    let g:neocomplete#enable_at_startup = 1
endif

" Go
let g:go_fmt_command = "goimports"

" customization
let mapleader = ","
