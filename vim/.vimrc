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
set listchars=tab:▸\ ,eol:¬
set tabstop=4
set softtabstop=4
set shiftwidth=4

set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'posva/vim-vue'
Plugin 'tpope/vim-fugitive' " the ultimate git helper
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmit-vim'

call vundle#end()
filetype plugin indent on

" Thyme mapping
nmap <leader>t :!thyme -d<cr>
