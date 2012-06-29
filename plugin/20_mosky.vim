" Mosky's settings

" Shortcut

nmap ; :
map <down> gj
map <up> gk

map <leader><leader> :tabnext<CR>
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
    let g:ctrlp_follow_symlinks = 1
endif

" taglist.vim
if exists(':TlistToggle')
    map <leader>tl :TlistToggle<CR>
endif

" snipMate
let g:snippets_dir = $HOME."/.vim/bundle/mosky.vim/snippets/"
