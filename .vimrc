set nocompatible
set laststatus=2
set encoding=utf-8
syntax on
set t_Co=256 "256 color mode
set background=dark

set autoindent
set number
set cpoptions+=n


set vb

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
"Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
Bundle 'mattn/zencoding-vim'
"for ZenCoding expand Ctrl+E
let g:user_zen_expandabbr_key = '<c-e>' 
let g:use_zen_complete_tag = 1

"Bundle 'L9'
"Bundle 'FuzzyFinder'

"Bundle 'git://git.wincent.com/command-t.git' " needs ruby compiled
" ...

Bundle 'SuperTab'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-surround'
Bundle 'nanotech/jellybeans.vim'

"New Bundles
Bundle "Townk/vim-autoclose"
Bundle "ervandew/supertab"

let g:jellybeans_use_lowcolor_black = 0
colorscheme jellybeans

filetype plugin indent on     " required!
