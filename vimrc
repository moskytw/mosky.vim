set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" --- Mosky's Plugins ---

" ## Daily Using

Plugin 'moskytw/mosky.vim'

" L9 is required by AutoComplPop
Plugin 'L9'

Plugin 'AutoComplPop'
" The alternative of AutoComplPop
"Plugin 'Valloric/YouCompleteMe'

"Plugin 'javacomplete'

Plugin 'msanders/snipmate.vim'
"Plugin 'SirVer/ultisnips'

Plugin 'kien/ctrlp.vim'

"Plugin 'moskytw/tagit.vim'

"Plugin 'terryma/vim-multiple-cursors'

"Plugin 'majutsushi/tagbar'

Plugin 'gregsexton/MatchTag'

Plugin 'python_match.vim'

" the text object for argument, ex. aa, ia
Plugin 'argtextobj.vim'

" the text object for argument, ex. ai, ii
"Plugin 'michaeljsmith/vim-indent-object'

" more text objects
Plugin 'wellle/targets.vim'

Plugin 'tpope/vim-surround'

"Plugin 'scrooloose/nerdtree'

"Plugin 'ehamberg/vim-cute-python'

" ## Syntax

Plugin 'othree/html5.vim'
Plugin 'othree/html5-syntax.vim'
Plugin 'scrooloose/syntastic'

" it works strangely
"Plugin 'hail2u/vim-css3-syntax
"
Plugin 'mako.vim'
Plugin 'nginx.vim'

Plugin 'ap/vim-css-color'

" --- end ---

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
