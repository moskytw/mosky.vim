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

" Colors

set t_Co=256
color moskyfav

" Specific File Type

autocmd FileType python set smartindent cinwords=if,elif,else,for,while,with,try,except,finally,def,class

" About Plugins

" FuzzyFinder
if exists(':FufFile')
    map <leader>e :tabnew<CR>:FufFile **/<CR>
    map <leader>f :FufFile **/<CR>
endif

" snipMate
let g:snippets_dir = $HOME."/.vim/bundle/moskysvim/snippets/"
