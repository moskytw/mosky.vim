" https://github.com/junegunn/vim-plug#usage

call plug#begin('~/.config/nvim/plugged')

" sorted by displaying, moving, selecting, editing, and big plugins

" --- displaying ---

" use % to travel paired tags
runtime macros/matchit.vim

" highlight the matched tag
Plug 'gregsexton/MatchTag'

" conceal lambda into λ, etc.
Plug 'ehamberg/vim-cute-python'

" syntax
Plug 'othree/html5.vim'
Plug 'moskytw/nginx-contrib-vim'
Plug 'kchmck/vim-coffee-script'

" --- moving ---

" use % to travel Python's if, elif, etc.
Plug 'python_match.vim'

"map <Leader>m <Plug>(easymotion-prefix)
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
Plug 'easymotion/vim-easymotion'

" --- selecting ---

" use +/_ to expand/shrink visual selection
Plug 'terryma/vim-expand-region'

" viI: an indent level (no lines above/below)
" vii: an indent level (no lines above)
" vai: an indent level + the above line
" vaI: an indent level + the above & below line
Plug 'michaeljsmith/vim-indent-object'

" dIa: f(a, b, c) -> f(a, ,c)
" dia: f(a, b, c) -> f(a,, c)
" daa: f(a, b, c) -> f(a, c)
" dAa: f(a, b, c) -> f(ac)
" more: https://github.com/wellle/targets.vim/blob/master/cheatsheet.md
Plug 'wellle/targets.vim'

" --- editing ---

" viwS'  : word        -> 'word'
" ysiw'  : word        -> 'word'
" cs'"   : 'word'      -> "word"
" ds"    : "word"      -> word
" viwS<p>: word        -> <p>word</p>
" ysiw<p>: word        -> <p>word</p>
" cst<a> : <p>word</p> -> <a>word</a>
" dst    : <a>word</a> -> word
" yss for entire line
Plug 'tpope/vim-surround'

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
Plug 'terryma/vim-multiple-cursors'

" :Tabularize /{pattern}
" " find some equals signs
" vap:Ta<Tab> /=<CR>
" " find a text table
" vap:Ta<Tab> /|<CR>
"Plug 'godlygeek/tabular'

" it makes nvim 0.5s slower at startup
" #!<Tab>
" ifmain<Tab>
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

" --- big plugins ---

" <Ctrl-P>
"Plug 'kien/ctrlp.vim'

" :TagbarToggle
" <Leader>l
" p : preview
" s : trigger sort
"Plug 'majutsushi/tagbar'

" :GundoToggle
" <Leader>u
"Plug 'sjl/gundo.vim'

" :Errors
" <Leader>E
"Plugin 'scrooloose/syntastic'

" Mosky's fav
" put at the end to override the configs of plugins
Plug 'moskytw/mosky.vim'

call plug#end()
