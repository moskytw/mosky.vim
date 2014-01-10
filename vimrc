" # Vundle Stuff
"
" Here is the settings for Vundle
" Find the other settings in <mosky.vim>/plugin/*.vim

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" --- Mosky's Plugins ---

" ## Daily Using

Bundle 'moskytw/mosky.vim'

" L9 is required by AutoComplPop
Bundle 'L9'

Bundle 'AutoComplPop'
" The alternative of AutoComplPop
"Bundle 'Valloric/YouCompleteMe'

"Bundle 'javacomplete'

Bundle 'msanders/snipmate.vim'
"Bundle 'SirVer/ultisnips'

Bundle 'kien/ctrlp.vim'

"Bundle 'moskytw/tagit.vim'

Bundle 'terryma/vim-multiple-cursors'

Bundle 'majutsushi/tagbar'

Bundle 'gregsexton/MatchTag'

Bundle 'python_match.vim'

" the text object for argument, ex. aa, ia
Bundle 'argtextobj.vim'

" the text object for argument, ex. ai, ii
Bundle 'michaeljsmith/vim-indent-object'

Bundle 'tpope/vim-surround'

"Bundle 'scrooloose/nerdtree'

"Bundle 'ehamberg/vim-cute-python'

" ## Syntax

Bundle 'othree/html5.vim'
Bundle 'othree/html5-syntax.vim'
Bundle 'scrooloose/syntastic'

" it works strangely
"Bundle 'hail2u/vim-css3-syntax
"
Bundle 'mako.vim'
Bundle 'nginx.vim'

Bundle 'ap/vim-css-color'

" --- end ---

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
