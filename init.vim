" Mosky's init.vim
" ================
"
" Read the comments for the useful keystrokes of the plugins.
"
" It meets the unadorned requirements of Python development, but any feature
" request or bug report is welcome. Send mail to Mosky <mosky.tw@gmail.com>.
"

" use vim-plug to manage plugins, see https://github.com/junegunn/vim-plug#usage
" for details
call plug#begin('~/.config/nvim/plugged/')

" sorted by displaying, moving, selecting, editing, and Mosky's fav

" --- displaying ---

" use % to travel paired tags
runtime macros/matchit.vim

" highlight the matched tag
Plug 'gregsexton/MatchTag'

" " conceal lambda into λ, etc.
" Plug 'ehamberg/vim-cute-python'

" syntax
Plug 'othree/html5.vim'
Plug 'moskytw/nginx-contrib-vim'
Plug 'kchmck/vim-coffee-script'

" --- moving ---

" use % to travel Python's if, elif, etc.
Plug 'vim-scripts/python_match.vim'

" after :map <Leader><Leader> <Plug>(easymotion-prefix)
" <Leader><Leader>w: select a beginning of word to jump
" <Leader><Leader>W: select a beginning of WORD to jump
" <Leader><Leader>f: select a right char to jump
" <Leader><Leader>F: select a left char to jump
" <Leader><Leader>j: select a line downward to jump
" <Leader><Leader>k: select a line forward to jump
" and so on
" <Leader><Leader>n: select a latest / or ? to jump
" <Leader><Leader>N: select a latest / or ? to jump
" <Leader><Leader>s: select a right and left char to jump
" more: :tabnew | h easymotion | only
" or:
" https://github.com/easymotion/vim-easymotion/blob/master/doc/easymotion.txt
Plug 'easymotion/vim-easymotion'

" --- selecting ---

" dIa: f(a, b, c) -> f(a, ,c)
" dia: f(a, b, c) -> f(a,, c)
" daa: f(a, b, c) -> f(a, c)
" dAa: f(a, b, c) -> f(ac)
" more: https://github.com/wellle/targets.vim/blob/master/cheatsheet.md
Plug 'wellle/targets.vim'

" vaI: an indent level + the above & below line -- select a Ruby function
" vai: an indent level + the above line -- select a Python function
" vii: an indent level -- select lines in a Ruby or Python function
Plug 'michaeljsmith/vim-indent-object'

" use +/_ to expand/shrink visual selection
" let g:expand_region_text_objects = {
"       \ 'iw'  :0,
"       \ 'iW'  :0,
"       \ 'i"'  :0,
"       \ 'i''' :0,
"       \ 'i]'  :1, " Support nesting of square brackets
"       \ 'ib'  :1, " Support nesting of parentheses
"       \ 'iB'  :1, " Support nesting of braces
"       \ 'il'  :0, " 'inside line'. Available through https://github.com/kana/vim-textobj-line
"       \ 'ip'  :0,
"       \ 'ie'  :0, " 'entire file'. Available through https://github.com/kana/vim-textobj-entire
"       \ }
Plug 'terryma/vim-expand-region'

" --- editing ---

" ds"    : "word"      -> word
" dst    : <a>word</a> -> word
" cs'"   : 'word'      -> "word"
" cst<a> : <p>word</p> -> <a>word</a>
" viwS'  : word        -> 'word'
" viwS<p>: word        -> <p>word</p>
" ysiw'  : word        -> 'word'
" ysiw<p>: word        -> <p>word</p>
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

" --- Mosky's fav ---

" put at the end to override the configs of the above plugins
Plug 'moskytw/luthadel.vim'
Plug 'moskytw/mosky.vim'

call plug#end()
