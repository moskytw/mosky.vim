" Mosky's Vim Config
" ==================
"
" Read the comments for the useful built-in and custom keystrokes. Use `:vert h
" <option name>` to get more information.
"
" It meets the unadorned requirements of Python development, but any feature
" request or bug report is welcome. Send mail to Mosky <mosky.tw@gmail.com>.
"
" It is heavily inspired by Amir Salihefendic's vimrc:
" https://github.com/amix/vimrc
"
" Copyright (c) 2018 Mosky Liu, and licensed under MIT:
" https://opensource.org/licenses/MIT.
"

" enable filetype plugins
filetype plugin on
filetype indent on

" sorted by global, displaying, opening, moving, editing, and saving

" -- global ---

let mapleader = ','

" --- displaying ---

set ruler
set number

set textwidth=79
set colorcolumn=80
set wrap
set linebreak

set cursorline
set showmatch
" default off in vim, but default on in nvim
set hlsearch

set list
set listchars=tab:▹\ ,trail:▵

" pum: PopUp Menu which is triggered by Ctrl-N in insert mode
set pumheight=16

" keep space from top and bottom
set scrolloff=2

set wildmenu
set wildignore=*.o,*~,*.pyc

" ,f: toggle foldenable
"
" act with cursor
"
" zj: move to next fold
" zk: move to prev fold
" zo: open one fold
" zO: open folds recursively
" zc: close one fold
" zC: (select multiple lines) close folds recursively
" za: toggle one fold
" zA: toggle folds recursively
"
" act on a buffer
"
" zx: undo manually opened and closed folds, except the cursor line
" zX: undo manually opened and closed folds
" zr: open one fold level: foldlevel+=1
" zR: open all fold level: foldlevel=MAX
" zm: close one fold level: foldlevel-=1
" zM: close all fold level: foldlevel=0
"
set foldmethod=indent
set foldnestmax=3
set nofoldenable
noremap <silent> <Leader>f :set foldenable!<CR>:set foldenable?<CR>

" " make docstrings foldable
" autocmd FileType python
" \ syn region pythonString
" \     start=+[uU]\=\z('''\|"""\)+ end="\z1" keepend
" \     contains=pythonEscape,pythonSpaceError,pythonDoctest,@Spell
" \     fold
" \ |
" \ syn region pythonRawString
" \     start=+[uU]\=[rR]\z('''\|"""\)+ end="\z1" keepend
" \     contains=pythonSpaceError,pythonDoctest,@Spell
" \     fold

" TODO: let foldcolumn use the char like this
" stl: status line for current window
" stlnc: status line for non-current window
set fillchars=stl:\ ,stlnc:\ ,vert:\ ,fold:\ ,diff:\ 

" fix the mako highlight
autocmd BufNewFile,BufRead *.mako
\ setlocal filetype=html

syntax on
set t_Co=256
color luthadel

" don't redraw while executing macros (good performance config)
set lazyredraw

" " vim-cute-python forgets them, you can test with
" "
" " a > b
" " a < c
" " a >= b
" " a <= b
" " a == b
" " a is b
" " a is not b
" " not a == not b
" "
" autocmd FileType python
" \ syntax match pythonOperator '\<is not\>' |
" \ syntax match pythonOperator '<=\@!' |
" \ syntax match pythonOperator '>=\@!'

" --- opening ---

" nvim: E905: Cannot set this option after startup: encoding=utf-8
"set encoding=utf-8

" buffer
noremap <Leader>e :edit <C-R>=expand('%:p:h')<CR>/
noremap <Leader>b :buffers<CR>:b
noremap <Leader>d :bd<CR>

" tab
set tabpagemax=100
noremap <Leader>t :tabedit <C-R>=expand('%:p:h')<CR>/
" ,1 ,2 ,3: go specific tab
for i in range(1, 9)
    exec 'noremap <Leader>'.i.' '.i.'gt'
endfor
" gt: next tab
" gT: previous tab

" split
" ,v: split vertically
" ,h: split horizontally
set splitright
noremap <silent> <Leader>v :vsplit<CR>
noremap <silent> <Leader>h :split<CR>

" return to last edit position when opening files
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line('$') |
\   exe "normal! g`\"" |
\ endif

" --- moving ---

" '': jump to the last place
" ma: set mark 'a'
" 'a: jump to mark 'a'
" '<: go the beginning of the last selection
" '>: go the end of the last selection
"
" m<jjjm>gv: mark and select

" move smoothly between lines
set whichwrap=b,s,<,>,[,]

set incsearch
" use /\C to overrule it
set ignorecase
" be case-sensitive when contains upper char
set smartcase
set nowrapscan

" ,c: clear search register
noremap <silent> <Leader>c :let @/ = ''<CR>

set mouse=a

" refine the arrow-keys
noremap <down> g<down>
noremap <up> g<up>
noremap j gj
noremap k gk

" fix the offical python indent
let pyindent_open_paren=0

" EasyMotion
map <Leader><Leader> <Plug>(easymotion-prefix)
map <Leader>j <Plug>(easymotion-prefix)j
map <Leader>k <Plug>(easymotion-prefix)k
map <Leader>n <Plug>(easymotion-prefix)n
map <Leader>N <Plug>(easymotion-prefix)N

" --- editing ---

set autoindent

set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

" TODO; refine the option
" for gq
set formatoptions=

" configure backspace so it acts as it should act
set backspace=eol,start,indent

" ,p: toggle paste mode
noremap <silent> <Leader>p :set paste!<CR>:set paste?<CR>

" ,r: toggle registers
noremap <silent> <Leader>r :registers<CR>:put 

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
noremap <silent> <Leader>s :set spell!<CR>:set spell?<CR>

" hand-made snippets

autocmd FileType python
\ noremap <Leader>i1 i#!/usr/bin/env python<CR># -*- coding: utf-8 -*-<CR><CR><CR>|
\ noremap <Leader>ii iif __name__ == '__main__':<CR>

autocmd FileType html
\ noremap <Leader>i1 i<!DOCTYPE html><CR><CR>

" --- saving ---

" don't backup
set nobackup
set nowb
set noswapfile

" make Ctrl-Z work in insert mode
" pressing Ctrl-O switches to normal mode for one command
inoremap <C-Z> <C-O><C-Z>

" save
noremap <Leader>w :w<CR>
noremap <Leader>q :q!<CR>
noremap <Leader>x :x<CR>
noremap <Leader>z :w<CR><C-Z>
noremap <Leader>W :wa<CR>
noremap <Leader>Q :qa!<CR>
noremap <Leader>X :xa<CR>
noremap <Leader>Z :wa<CR><C-Z>
noremap <Leader>!w :w !sudo tee %:p > /dev/null<CR>
" usually we don't wanna go ex mode. just miss the leader key.
noremap Q :qa
