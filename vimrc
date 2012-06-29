" Here is the settings for Vundle
" Find the other settings in <mosky.vim>/plugin/*.vim

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
"Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
"Bundle 'FuzzyFinder'
Bundle 'python.vim'
Bundle 'AutoComplPop'
" Bundle 'desert.vim'
Bundle 'pyflakes.vim'
Bundle 'surround.vim'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

Bundle 'moskied/tagit.vim'
Bundle 'moskied/mosky.vim'

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
