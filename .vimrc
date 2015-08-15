source ~/.vim/include/plugins

set nocompatible
colorscheme seoul256

filetype off
filetype plugin indent on
syntax on

set nowrap
set number
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

set foldmethod=syntax
set foldlevel=2

" Jump between splits
noremap <c-k> <c-w>k
noremap <c-j> <c-w>j
noremap <c-h> <c-w>h
noremap <c-l> <c-w>l

" highlight only line longer then 80
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" spelling
map <C-M> :w!<CR>:!aspell -c %<CR>:e! %<CR>

" Powerline
let g:airline_theme = 'light'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
set t_Co=256

" Ctrlp
" let g:loaded_ctrlp = 1 " disable Ctrlp plugin
" let g:ctrlp_regexp = 1
" let g:ctrlp_switch_buffer = 'Et' " if file is open, jump to its buffer
let g:ctrlp_max_height = 20
let g:ctrlp_user_command = [
    \ '.git', 'cd %s && git ls-files . -co --exclude-standard',
    \ 'find %s -type f'
    \ ]

" line nubmers
" au InsertEnter * :set nu
" au InsertLeave * :set rnu

" neocomplete
if has("lua")
    let g:neocomplete#enable_at_startup = 1
endif

" Go
let g:go_fmt_command = "goimports"

" customization
let mapleader = ","
