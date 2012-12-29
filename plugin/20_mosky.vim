" Mosky's VIM configuration
" https://github.com/moskytw/mosky.vim/blob/master/plugin/20_mosky.vim

" revert settings form Amir
" NOTE: Amir uses ',' as the leader key, but ',' is useful for me
let mapleader = '\'

" makes Ctrl-Z work in insert mode
inoremap <C-Z> <ESC><C-Z>

" open help in new tab
cabbrev h tab h

" uses leader to make shortcut for common commands
" 1. daily routines
noremap <leader>z :w<CR><C-Z>
noremap <leader>w :w<CR>
noremap <leader>x :x<CR>
noremap <leader>q :q!<CR>
noremap <leader>d :bd<CR>
noremap <leader>X :xa<CR>
noremap <leader>Q :qa!<CR>
noremap <leader>b :buffers<CR>:b
" 2. tab-related
noremap <leader>e :tabedit <C-R>=expand("%:p:h")<CR>/
noremap <leader><leader> :tabnext<CR>
for i in range(1, 9)
    exec 'nmap <leader>'.i.' '.i.'gt<CR>'
endfor
" 3. I always forgot to use <Ctrl+T> to open a file in new tab, so ...
noremap <leader>t :tabnew<CR>:CtrlP<CR>

" shortcuts which use <F#>
" 1. paste mode
set pastetoggle=<F2>
noremap <F2> <F2>:set paste?<CR>
" 2. vertical split
set splitright
noremap <F3> :vsplit<CR>
imap <F3> <C-O><F3>
" 3. spelling check
noremap <silent> <F7> :set spell!<CR>
imap <F7> <C-O><F7>
" 4. toggle tagbar
noremap <F12> :TagbarToggle<CR>
imap <F12> <C-O><F12>

" makes arrow-keys work smoothly
" treats a wrapped line as different lines
noremap <down> gj
noremap <up> gk
" the following two map will break the function of competition
"imap <down> <C-O><down>
"imap <up> <C-O><up>
noremap <C-down> 3<C-E>
noremap <C-up> 3<C-Y>
imap <C-down> <C-O><C-down>
imap <C-up> <C-O><C-up>

" interface

set cmdheight=1
set nu
set mouse=a " hold shift to select and copy text
set colorcolumn=83

" colors 

set t_Co=256
color moskyfav3
syn keyword Todo TODO FIXME XXX NOTE contained

" folding

" folding is annoying for me
"set foldmethod=syntax
set foldnestmax=2

" competition

set completeopt=menu,menuone,longest
set pumheight=15

" specific file type

autocmd BufNewFile,BufRead *.mako set filetype=mako
autocmd FileType python set smartindent cinwords=if,elif,else,for,while,with,try,except,finally,def,class "foldmethod=indent
autocmd BufNewFile,BufRead */nginx/* set filetype=nginx 
" autocmd BufWritePost *vimrc,*.vim :so %

" plugins
" 1. ctrlp.vim
if exists(':CtrlP')
    let g:ctrlp_clear_cache_on_exit = 0
    let g:ctrlp_follow_symlinks = 1
endif
" 2. snipMate
let g:snippets_dir = $HOME."/.vim/bundle/mosky.vim/snippets/"
" 3. for syntax/python.vim
let python_highlight_all = 1
autocmd FileType python
            \ hi link pythonCoding Comment |
            \ hi link pythonPreCondit PreProc |
            " python.vim has some bug
            " \ hi link pythonRun Comment |
