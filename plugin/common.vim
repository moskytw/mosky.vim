" enable filetype plugins
filetype plugin on
filetype indent on

" set to reread automatically when file is changed from outside
set autoread

" set minimal number of screen lines to keep above and below the cursor
set scrolloff=2

" turn on the wild menu
set wildmenu

" ignore files which are from compiling
set wildignore=*.o,*~,*.pyc

" always show current position
set ruler

" configure backspace so it acts as it should act
set backspace=eol,start,indent

" move smoothly between lines
set whichwrap=b,s,<,>,[,]

" ignore case when searching
set ignorecase

" when searching try to be smart on case
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

" notify if the line is too long
set colorcolumn=81

" return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

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

set tabpagemax=100

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

" refine the arrow-keys

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
set fillchars=stl:\ ,stlnc:\ ,vert:\│,fold:\ ,diff:\ ,

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
    \ syn region pythonRawString
        \ start=+[uU]\=[rR]\z('''\|"""\)+ end="\z1" keepend
        \ contains=pythonSpaceError,pythonDoctest,@Spell
        \ fold

" matchit.vim
runtime macros/matchit.vim

" TODO: do plugin-specific statement only if plugin is loaded

" snipMate
let g:snippets_dir = $HOME."/.vim/bundle/mosky.vim/snippets/"

" ctrlp.vim
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_follow_symlinks=1
