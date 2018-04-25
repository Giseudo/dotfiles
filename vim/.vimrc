syntax enable

" Setup theme
set background=dark
let g:solarized_termtrans = 16
colorscheme solarized

" Explicity tell terminal to use 16 bits colors
set t_Co=16

" Vim Airline symbols
let g:airline_powerline_fonts = 1

" Set list chars
set list
set nu
set listchars=tab:▸\ ,eol:¬
set tabstop=4
set softtabstop=4
set shiftwidth=4

set nocompatible
filetype off

" Fix delete key
set backspace=indent,eol,start

" Fix slow scrolling
set lazyredraw

" Change *.swp/swo/swn files to temp folder
set dir=$HOME/.vim_tmp/swap//
if !isdirectory(&dir) | call mkdir(&dir, 'p', 0700) | endif

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'posva/vim-vue'
Plugin 'tpope/vim-fugitive' " the ultimate git helper
Plugin 'evidens/vim-twig'
Plugin 'mustache/vim-mustache-handlebars'
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
" Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
" Plugin 'hail2u/vim-css3-syntax'
" Plugin 'benmills/vimux'
Plugin 'wakatime/vim-wakatime'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'leafgarland/typescript-vim'

call vundle#end()
filetype plugin indent on

" Fix vue-vim stylesheet slowing down
let g:vue_disable_pre_processors=1

" Thyme mapping
nmap <leader>t :!thyme -d<cr>

" Vimux mappin
nmap <leader>b :VimuxRunCommand("love .")<cr>
nmap <leader>p :VimuxRunCommand("python -m main")<cr>

autocmd VimEnter * NERDTree
