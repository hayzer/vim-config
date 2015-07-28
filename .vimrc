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

" highlight only line longer then 80
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" spelling
map <C-M> :w!<CR>:!aspell -c %<CR>:e! %<CR>

" Powerline
let g:airline_theme = 'light'
set t_Co=256
