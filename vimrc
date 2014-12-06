set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Mosky's fav
Plugin 'moskytw/mosky.vim'

" <Ctrl-P>
Plugin 'kien/ctrlp.vim'

" :TagbarToggle
Plugin 'majutsushi/tagbar'

" :Errors
Plugin 'scrooloose/syntastic'

" highlight the matched tag
Plugin 'gregsexton/MatchTag'

" switch between Python's if, elif, etc. by %
Plugin 'python_match.vim'

" conceal lambda into λ, etc.
Plugin 'ehamberg/vim-cute-python'

" ifmain<Tab>
Plugin 'msanders/snipmate.vim'
"Plugin 'SirVer/ultisnips'

" <Ctrl-N><Ctrl-N>va'<ESC><ESC>
" <Ctrl-V>G<Ctrl-N>i'
Plugin 'terryma/vim-multiple-cursors'

" won't work with targets.vim
"Plugin 'argtextobj.vim'

" vai, vaI, vii, vaI
Plugin 'michaeljsmith/vim-indent-object'

" da,
Plugin 'wellle/targets.vim'

" cs"', vsw*, vwS<p>
Plugin 'tpope/vim-surround'

" web
Plugin 'othree/html5.vim'
Plugin 'othree/yajs.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'ap/vim-css-color'

" more web
Plugin 'mako.vim'
Plugin 'nginx.vim'

" omni completion for java
"Plugin 'javacomplete'

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
