set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" highlight the matched tag
Plugin 'gregsexton/MatchTag'

" conceal lambda into λ, etc.
Plugin 'ehamberg/vim-cute-python'

" use % to travel paired tags
runtime macros/matchit.vim

" use % to travel Python's if, elif, etc.
Plugin 'python_match.vim'

" I map it to <Leader>m
" <Leader>mw: select a beginning of word to jump
" <Leader>mW: select a beginning of WORD to jump
" <Leader>mf: select a right char to jump
" <Leader>mF: select a left char to jump
" <Leader>mj: select a line downward to jump
" <Leader>mk: select a line forward to jump
" and so on
" <Leader>mn: select a latest / or ? to jump
" <Leader>mN: select a latest / or ? to jump
" <Leader>ms: select a right and left char to jump
Plugin 'easymotion/vim-easymotion'

" use +/_ to expand/shrink visual selection
Plugin 'terryma/vim-expand-region'

" viI: an indent level (no lines above/below)
" vii: an indent level (no lines above)
" vai: an indent level + the above line
" vaI: an indent level + the above & below line
Plugin 'michaeljsmith/vim-indent-object'

" dIa: f(a, b, c) -> f(a, ,c)
" dia: f(a, b, c) -> f(a,, c)
" daa: f(a, b, c) -> f(a, c)
" dAa: f(a, b, c) -> f(ac)
" more: https://github.com/wellle/targets.vim/blob/master/cheatsheet.md
Plugin 'wellle/targets.vim'

" viwS'  : word   -> 'word'
" ysiw'  : word   -> 'word'
" cs'"   : 'word' -> "word"
" ds"    : "word" -> word
" viwS<p>: word        -> <p>word</p>
" ysiw<p>: word        -> <p>word</p>
" cst<a> : <p>word</p> -> <a>word</a>
" dst    : <a>word</a> -> word
" yss for entire line
Plugin 'tpope/vim-surround'

" ms-: multiple selection
" enter and exit the ms-visual mode:
"
" <Ctrl-N>: enter with current word or visual selection
" <ESC>   : exit
"
" in the ms-visual mode:
"
" <Ctrl-N>: add
" <Ctrl-X>: skip
" <Ctrl-P>: back
" c, s    : delete all selections and go ms-insert mode
" v       : go normal mode
"
" in the ms-normal mode:
"
" I, i, a, A: move the cursors and go ms-insert mode
"
Plugin 'terryma/vim-multiple-cursors'

" " find some equals signs
" vap:Ta<Tab> /=<CR>
" " find a text table
" vap:Ta<Tab> /|<CR>
Plugin 'godlygeek/tabular'

" #!<Tab>
" ifmain<Tab>
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" <Ctrl-P>
Plugin 'kien/ctrlp.vim'

" :TagbarToggle
Plugin 'majutsushi/tagbar'

" :Errors
Plugin 'scrooloose/syntastic'

" syntax
Plugin 'othree/html5.vim'
Plugin 'moskytw/nginx-contrib-vim'

" Mosky's fav
" put at the end to override the configs of plugins
Plugin 'moskytw/mosky.vim'

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
