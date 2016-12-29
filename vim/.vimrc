syntax enable
set background=dark
let g:solarized_termtrans = 16
colorscheme solarized
set t_Co=16

" Vim Airline symbols
let g:airline_powerline_fonts = 1
set laststatus=2

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'posva/vim-vue'
Plugin 'tpope/vim-fugitive' " the ultimate git helper
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()            " required
filetype plugin indent on    " required

" Thyme mapping
nmap <leader>t :!thyme -d<cr>
