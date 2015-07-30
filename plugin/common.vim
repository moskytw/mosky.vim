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
set smartindent

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

set foldmethod=syntax
set foldnestmax=2

" for gq
set formatoptions=

" completion
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

" make <Ctrl-Z> work in insert mode
inoremap <C-Z> <ESC><C-Z>

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

" travel buffers
noremap <leader>e :edit <C-R>=expand("%:p:h")<CR>/
noremap <leader>d :bd<CR>
noremap <leader>b :buffers<CR>:b

" travel tabs
noremap <leader>t :tabedit <C-R>=expand("%:p:h")<CR>/
",,
noremap <leader><leader> :tabnext<CR>
",1
for i in range(1, 9)
    exec 'nmap <leader>'.i.' '.i.'gt<CR>'
endfor

" vertically split
noremap <leader>v :vsplit <C-R>=expand("%:p:h")<CR>/

" <F2>: toggle paste mode
set pastetoggle=<F2>
noremap <F2> <F2>:set paste?<CR>

" <F3>: add a vertical split
set splitright
noremap <F3> :vsplit<CR>
imap <F3> <C-O><F3>

" <F5>: execute program
noremap <F5> :!python %:p<CR>

" <F7>: toggle spelling check
noremap <silent> <F7> :set spell!<CR>
imap <F7> <C-O><F7>

" <F10>: toggle foldenable
set nofoldenable
noremap <silent> <F10> :set foldenable!<CR>
imap <F10> <C-O><F10>

noremap <leader>h :set hlsearch!<CR>

autocmd BufNewFile,BufRead *.mako setlocal filetype=mako
autocmd BufNewFile,BufRead */nginx/* setlocal filetype=nginx

autocmd FileType python setlocal nosmartindent

" return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" makes the docstring is foldable

autocmd FileType python
    \ syn region pythonString
        \ start=+[uU]\=\z('''\|"""\)+ end="\z1" keepend
        \ contains=pythonEscape,pythonSpaceError,pythonDoctest,@Spell
        \ fold
    \ |
    \ syn region pythonRawString
        \ start=+[uU]\=[rR]\z('''\|"""\)+ end="\z1" keepend
        \ contains=pythonSpaceError,pythonDoctest,@Spell
        \ fold

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
