" Mosky's settings

" Shortcut

nmap ; :
map <down> gj
map <up> gk

for i in range(1, 9)
    exec 'nmap <leader>'.i.' '.i.'gt<CR>'
endfor

" Interface

map <leader><leader> :tabnext<CR>
set cmdheight=1
set nu
set mouse=a " hold shift to select and copy text

" Colors

set t_Co=256
color moskyfav

" Specific File Type

autocmd FileType python set smartindent cinwords=if,elif,else,for,while,with,try,except,finally,def,class

autocmd BufWritePost *vimrc,*.vim :so %

" About Plugins

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
endif

" snipMate
let g:snippets_dir = $HOME."/.vim/bundle/moskysvim/snippets/"
