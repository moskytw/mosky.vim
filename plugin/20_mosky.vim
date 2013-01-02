" Mosky's VIM configuration
" https://github.com/moskytw/mosky.vim/blob/master/plugin/20_mosky.vim

" use it to make Ctrl-Z work in insert mode
inoremap <C-Z> <ESC><C-Z>

" make some shortcuts with leader key for common commands
" 1. daily routines
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
" 2. tab-related
noremap <leader>t :tabedit <C-R>=expand("%:p:h")<CR>/
noremap <leader><leader> :tabnext<CR>
for i in range(1, 9)
    exec 'nmap <leader>'.i.' '.i.'gt<CR>'
endfor
" 3. vertical split
" TODO use a function to expand pwd
noremap <leader>v :vsplit <C-R>=expand("%:p:h")<CR>/

" make some shortcuts with <F#>
imap <F10> <C-O><F10>
" <F12> toggle tagbar
noremap <F12> :TagbarToggle<CR>
imap <F12> <C-O><F12>

" open help in a new tab
cabbrev h tab h

" make arrow-keys better
" treat a wrapped line as different lines
noremap <down> gj
noremap <up> gk
" the following two mapping are useful, but it is sad that they also break the competition ...
"imap <down> <C-O><down>
"imap <up> <C-O><up>
noremap <C-down> 3<C-E>
noremap <C-up> 3<C-Y>
imap <C-down> <C-O><C-down>
imap <C-up> <C-O><C-up>

" interface
set cmdheight=1
set number
set cursorline
set mouse=a " hold shift to select and copy text
" TODO let foldcolumn use the char like │
set fillchars=stl:\ ,stlnc:\ ,vert:│,fold:\ ,diff:\ ,

" color 
set t_Co=256
color moskyfav

" fold
set foldmethod=syntax
set foldnestmax=2
set nofoldenable

" competition
set completeopt=menu,menuone,longest
set pumheight=15

" specific file type
autocmd BufNewFile,BufRead *.mako setlocal filetype=mako
autocmd FileType python setlocal foldmethod=indent nosmartindent
autocmd BufNewFile,BufRead */nginx/* setlocal filetype=nginx 
" It will slow down the speed of saving.
"autocmd BufWritePost *vimrc,*.vim :so %

" TODO do plugin-specific statement only if plugin is loaded
" plugins
" 1. ctrlp.vim
if exists(':CtrlP')
    let g:ctrlp_clear_cache_on_exit = 0
    let g:ctrlp_follow_symlinks = 1
    " make a shortcut for CtrlP
    "noremap <leader>t :tabnew<CR>:CtrlP<CR>
endif
" 2. snipMate
let g:snippets_dir = $HOME."/.vim/bundle/mosky.vim/snippets/"
" 3. hack syntax/python.vim to act as I want
let python_highlight_all = 1
autocmd FileType python
            \ syn keyword pythonTodo TODO NOTE FIXME XXX contained |
            \ hi link pythonPreCondit PreCondit |
            \ hi link pythonCoding Comment |
            " python.vim treats both pythonRun and pythonCoding as pythonCoding wrongly
            " \ hi link pythonRun Comment |
