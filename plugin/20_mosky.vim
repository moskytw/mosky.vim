" Mosky's settings

" Shortcut

noremap <F8> :setlocal paste!<cr>
noremap <F7> :setlocal spell!<cr>
noremap ! :!
" swap the function of : and ;
" noremap ; :
" noremap : ;
" noremap . ;
noremap <ESC><ESC> w<CR>:suspend<CR>
noremap <down> gj
noremap <up> gk

noremap <leader><leader> :tabnext<CR>
for i in range(1, 9)
    exec 'nmap <leader>'.i.' '.i.'gt<CR>'
endfor

" Interface

set cmdheight=1
set nu
set mouse=a " hold shift to select and copy text

" Colors

set t_Co=256
color moskyfav

" Competition

set completeopt=menu,menuone,longest
set pumheight=15

" Specific File Type

autocmd BufNewFile,BufRead *.mako set filetype=mako
autocmd FileType python set smartindent cinwords=if,elif,else,for,while,with,try,except,finally,def,class

autocmd BufWritePost *vimrc,*.vim :so %

autocmd BufNewFile,BufRead */nginx/* set filetype=nginx 

" About Plugins

" let g:pydiction_location='~/.vim/bundle/Pydiction/complete-dict'

" FuzzyFinder
if exists(':FufFile')
    map <leader>e :tabnew<CR>:FufFile **/<CR>
    map <leader>f :FufFile **/<CR>
endif

" ctrlp.vim
if exists(':CtrlP')
    " use Ctrl+P
    "map <leader>e :tabnew<CR>:CtrlP<CR>
    " use Ctrl+T to open in new tab
    "map <leader>f :CtrlP<CR>
    let g:ctrlp_clear_cache_on_exit = 0
    let g:ctrlp_follow_symlinks = 1
    let g:ctrlp_prompt_mappings = {
      \ 'AcceptSelection("e")': ['<c-o>'],
      \ 'AcceptSelection("t")': ['<cr>', '<c-t>'],
      \ }
endif

" taglist.vim
if exists(':TlistToggle')
    map <leader>tl :TlistToggle<CR>
endif

" tagbar
if exists(':TagbarToggle')
    map <leader>tl :TagbarToggle<CR>
endif

" snipMate
let g:snippets_dir = $HOME."/.vim/bundle/mosky.vim/snippets/"
