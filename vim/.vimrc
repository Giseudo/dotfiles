syntax enable

" Setup theme
set background=dark
" let g:solarized_termcolors = 256
let g:solarized_termtrans = 16
colorscheme solarized

" Explicity tell terminal to use 16 bits colors
set t_Co=256

" Vim Airline symbols
let g:airline_powerline_fonts = 1

" Set list chars
set nolist
set nu
set listchars=tab:▸\ ,eol:¬
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set nocompatible
filetype off

" Fix delete key
set backspace=indent,eol,start

" Fix slow scrolling
set lazyredraw

" Change *.swp/swo/swn files to temp folder
set dir=$HOME/.vim_tmp/swap//
if !isdirectory(&dir) | call mkdir(&dir, 'p', 0700) | endif

call plug#begin('~/.vim/plugged')

" Plugins
Plug 'scrooloose/nerdtree'
Plug 'posva/vim-vue'
Plug 'tpope/vim-fugitive' " the ultimate git helper
Plug 'evidens/vim-twig'
Plug 'mustache/vim-mustache-handlebars'
Plug 'tikhomirov/vim-glsl'
Plug 'mattn/emmet-vim'
Plug 'wakatime/vim-wakatime'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Fix vue-vim stylesheet slowing down
let g:vue_disable_pre_processors=1

" Thyme mapping
nmap <leader>t :!thyme -d<cr>

" Vimux mappin
nmap <leader>b :VimuxRunCommand("love .")<cr>
nmap <leader>p :VimuxRunCommand("python -m main")<cr>

autocmd VimEnter * NERDTree
