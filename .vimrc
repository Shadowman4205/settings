set nocompatible
set laststatus=2
set encoding=utf-8
syntax on

set background=dark
"colorscheme jellybeans

set autoindent
set number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
set cpoptions+=n

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
"Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'

"Bundle 'L9'
"Bundle 'FuzzyFinder'

"Bundle 'git://git.wincent.com/command-t.git' " needs ruby compiled
" ...

Bundle 'SuperTab'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-surround'
Bundle 'nanotech/jellybeans.vim'


filetype plugin indent on     " required!
