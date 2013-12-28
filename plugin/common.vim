" enable filetype plugins
filetype plugin on
filetype indent on

" set to auto read when a file is changed from the outside
set autoread

" set minimal number of screen lines to keep above and below the cursor
set scrolloff=7

" turn on the WiLd menu
set wildmenu

" ignore compiled files
set wildignore=*.o,*~,*.pyc

" always show current position
set ruler

" configure backspace so it acts as it should act
set backspace=eol,start,indent

" move smoothly between lines
set whichwrap=b,s,<,>,[,]

" ignore case when searching
set ignorecase

" when searching try to be smart about cases
set smartcase

" highlight search results
set hlsearch

" make search act like search in modern browsers
set incsearch

" don't redraw while executing macros (good performance config)
set lazyredraw

" show matching brackets when text indicator is over them
set showmatch

" don't backup
set nobackup
set nowb
set noswapfile

" use spaces instead of tabs
set expandtab

" be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" linebreak on 500 characters
set lbr
set tw=500

" by default, use auto indent
set autoindent

" wrap lines
set wrap

" set the color
syntax on
set t_Co=256
color moskyfav

" print the line number in front of each line
set number

" highlight the screen line of the cursor
set cursorline

" notify the line is too long
set colorcolumn=81

" return to last edit position when opening files (You want this!)
"autocmd BufReadPost *
"     \ if line("'\"") > 0 && line("'\"") <= line("$") |
"     \   exe "normal! g`\"" |
"     \ endif

" make <Ctrl-Z> work in insert mode
inoremap <C-Z> <ESC><C-Z>

let mapleader = ","
let g:mapleader = ","

" useful shortcuts

noremap <leader>z :w<CR><C-Z>
noremap <leader>w :w<CR>
noremap <leader>x :x<CR>
noremap <leader>q :q!<CR>

noremap <leader>Z :wa<CR><C-Z>
noremap <leader>W :wa<CR>
noremap <leader>X :xa<CR>
noremap <leader>Q :qa!<CR>

noremap <leader>d :bd<CR>
noremap <leader>b :buffers<CR>:b
noremap <leader>e :edit <C-R>=expand("%:p:h")<CR>/

noremap <leader>t :tabedit <C-R>=expand("%:p:h")<CR>/

noremap <leader><leader> :tabnext<CR>
for i in range(1, 9)
    exec 'nmap <leader>'.i.' '.i.'gt<CR>'
endfor

noremap <leader>v :vsplit <C-R>=expand("%:p:h")<CR>/

" <F2>: toggle paste mode
set pastetoggle=<F2>
noremap <F2> <F2>:set paste?<CR>

" <F3>: add a vertical split
set splitright
noremap <F3> :vsplit<CR>
imap <F3> <C-O><F3>

" TODO: <F5>: execute program

" <F7>: toggle spelling check
noremap <silent> <F7> :set spell!<CR>
imap <F7> <C-O><F7>

" <F10>: toggle foldenable
set nofoldenable
noremap <silent> <F10> :set foldenable!<CR>
imap <F10> <C-O><F10>

" Refine the arrow-keys

noremap <down> g<down>
noremap <up> g<up>
" the following two mapping are useful, but it is sad that they also break the
" competition ...
"imap <down> <C-O><down>
"imap <up> <C-O><up>

noremap <C-down> 3<C-E>
noremap <C-up> 3<C-Y>
imap <C-down> <C-O><C-down>
imap <C-up> <C-O><C-up>

noremap <leader><CR> :noh<cr>

" TODO: let foldcolumn use the char like this
set fillchars=stl:\ ,stlnc:\ ,vert:│,fold:\ ,diff:\ ,

" hold shift to select and copy text
set mouse=a

set encoding=utf-8
set listchars=tab:▹\ ,trail:▵
set list

" use gq to format the paragraph
set textwidth=80
set formatoptions=

set foldmethod=syntax
set foldnestmax=2

" competition
set completeopt=menu,menuone
set pumheight=15

autocmd BufNewFile,BufRead *.mako setlocal filetype=mako
autocmd BufNewFile,BufRead */nginx/* setlocal filetype=nginx 

autocmd FileType python setlocal nosmartindent

" makes the docstring is foldable

autocmd FileType python
    \ syn region pythonString
        \ start=+[uU]\=\z('''\|"""\)+ end="\z1" keepend
        \ contains=pythonEscape,pythonSpaceError,pythonDoctest,@Spell
        \ fold
    \ |
    \ syn region  pythonRawString
        \ start=+[uU]\=[rR]\z('''\|"""\)+ end="\z1" keepend
        \ contains=pythonSpaceError,pythonDoctest,@Spell
        \ fold

" matchit.vim
runtime macros/matchit.vim

" TODO: do plugin-specific statement only if plugin is loaded

" syntastic

"let g:syntastic_check_on_wq=0
let g:syntastic_enable_signs=0

" ctrlp.vim
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_follow_symlinks = 1
" make a shortcut for CtrlP
"noremap <leader>t :tabnew<CR>:CtrlP<CR>

" snipMate
let g:snippets_dir = $HOME."/.vim/bundle/mosky.vim/snippets/"

" YouCompleteMe
"imap <silent> <s-tab> <c-r>=TriggerSnippet()<cr>
"nmap <silent> <s-tab> <esc>i<right><c-r>=TriggerSnippet()<cr>

" hack syntax/python.vim to act as I want
"let python_highlight_indent_errors = 0
"autocmd FileType python
"            \ syn keyword pythonTodo TODO NOTE FIXME XXX contained |
"            \ hi link pythonPreCondit PreCondit |
"            \ hi link pythonCoding Comment |
"            \ syn sync minlines=2000
"            " python.vim treats both pythonRun and pythonCoding as pythonCoding wrongly
"            " \ hi link pythonRun Comment |

" configure AutoComplPop for Java

"autocmd FileType java setlocal omnifunc=javacomplete#Complete
"
"let g:acp_behaviorJavaOmniLength = 0
"
"function MeetsForJavaOmni(context)
"  return g:acp_behaviorJavaOmniLength >= 0 &&
"        \ a:context =~ '\k\.\k\{' . g:acp_behaviorJavaOmniLength . ',}$'
"endfunction

"let g:acp_behavior = {
"            \   'java': [
"            \       {
"            \           'command': "\<C-N>",
"            \           'meets'  : 'acp#meetsForKeyword',
"            \           'reapeat': 0,
"            \       },
"            \       {
"            \           'command': "\<C-X>\<C-F>",
"            \           'meets'  : 'acp#meetsForFile',
"            \           'reapeat': 0,
"            \       },
"            \   ]
"            \}
"            "\       {
"            "\           'command': "\<C-X>\<C-O>",
"            "\           'meets'  : 'MeetsForJavaOmni',
"            "\           'reapeat': 0,
"            "\       },
" TODO: user defined competition
" TODO: snipmate competition
