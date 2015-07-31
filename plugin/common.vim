" enable filetype plugins
filetype plugin on
filetype indent on

set ruler
set number

set textwidth=80
set wrap
set linebreak

set showmatch

set incsearch
" use /\C to overrule it
set ignorecase
" be case-sensitive when contains upper char
set smartcase

set autoindent

set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

" keep spaces from top and bottom
set scrolloff=2

set wildmenu
set wildignore=*.o,*~,*.pyc

set listchars=tab:▹\ ,trail:▵
set list

" TODO: let foldcolumn use the char like this
set fillchars=stl:\ ,stlnc:\ ,vert:\ ,fold:\ ,diff:\ ,

set foldmethod=indent
set foldnestmax=2

" for gq
set formatoptions=

" Ctrl+N
set completeopt=menu,menuone
set pumheight=15

set mouse=a

set encoding=utf-8

set tabpagemax=100

syntax on
set t_Co=256
color moskyfav

set cursorline

set colorcolumn=81

" make Ctrl+Z work in insert mode
" pressing Ctrl-O switches to normal mode for one command
inoremap <C-Z> <C-O><C-Z>

let mapleader = ","
let g:mapleader = ","

" save
noremap <leader>w :w<CR>
noremap <leader>q :q!<CR>
noremap <leader>x :x<CR>
noremap <leader>z :w<CR><C-Z>
noremap <leader>W :wa<CR>
noremap <leader>Q :qa!<CR>
noremap <leader>X :xa<CR>
noremap <leader>Z :wa<CR><C-Z>
noremap <leader>! :w !sudo tee %:p > /dev/null<CR>
" usually we don't wanna go ex mode. just miss the leader key.
noremap Q :qa

" buffer
noremap <leader>r :e!<CR>
noremap <leader>e :edit <C-R>=expand("%:p:h")<CR>/
noremap <leader>d :bd<CR>
noremap <leader>b :buffers<CR>:b

" tab
noremap <leader>t :tabedit <C-R>=expand("%:p:h")<CR>/
" ,<tab>: go next tab
noremap <leader><tab> :tabnext<CR>
" ,1 ,2 ,3: go specific tab
for i in range(1, 9)
    exec 'nmap <leader>'.i.' '.i.'gt<CR>'
endfor

" split
" ,v: split window with another file
set splitright
noremap <silent> <leader>v :vsplit<CR>
imap <leader>v <C-O><leader>v

" ,h: toggle highlight
noremap <silent> <leader>h :set hlsearch!<CR>:set hlsearch?<CR>

" ,p: toggle paste mode
set pastetoggle=<leader>p
" for showing prompt
noremap <leader>p <leader>p:set paste?<CR>

" ,s: toggle spelling check
" zg: mark word as good
" zb: mark word as bad
" z=: list suggestions
" ]s: move to next
" [s: move to prev
" ]S: move to next bad word
" [S: move to prev bad word
" zug: undo zg
" zub: undo zu
noremap <silent> <leader>s :set spell!<CR>:set spell?<CR>
imap <leader>s <C-O><leader>s

" ,f: toggle foldenable
" zo: open one fold
" zO: open all folds
" zc: close one fold
" zC: close all folds
" za: toggle one fold
" zA: toggle all folds
" zj: move to next fold
" zk: move to prev fold
set nofoldenable
noremap <silent> <leader>f :set foldenable!<CR>:set foldenable?<CR>
imap <leader>f <C-O><leader>f

" return to last edit position when opening files
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif

"" makes the docstring is foldable
"autocmd FileType python
"\ syn region pythonString
"\     start=+[uU]\=\z('''\|"""\)+ end="\z1" keepend
"\     contains=pythonEscape,pythonSpaceError,pythonDoctest,@Spell
"\     fold
"\ |
"\ syn region pythonRawString
"\     start=+[uU]\=[rR]\z('''\|"""\)+ end="\z1" keepend
"\     contains=pythonSpaceError,pythonDoctest,@Spell
"\     fold

" vim-cute-python forgets it
autocmd FileType python
\ syntax match pythonOperator "\<is not\>"

" fix the mako highlight
autocmd BufNewFile,BufRead *.mako
\ setlocal filetype=html

" ctrlp.vim
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_follow_symlinks=1

" syntastic
let g:syntastic_enable_signs=0
let g:syntastic_python_checkers=['python']

" UltiSnips
let g:ultisnips_python_quoting_style='single'

" don't backup
set nobackup
set nowb
set noswapfile

" configure backspace so it acts as it should act
set backspace=eol,start,indent

" move smoothly between lines
set whichwrap=b,s,<,>,[,]

" refine the arrow-keys
noremap <down> g<down>
noremap <up> g<up>
" will break the completion menu
"imap <down> <C-O><down>
"imap <up> <C-O><up>
noremap <C-down> 3<C-E>
noremap <C-up> 3<C-Y>
imap <C-down> <C-O><C-down>
imap <C-up> <C-O><C-up>

" don't redraw while executing macros (good performance config)
set lazyredraw
