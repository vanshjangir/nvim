lua require('settings')
lua require('maps')
lua require('plugins')

call plug#begin()

Plug 'https://github.com/preservim/nerdtree'

call plug#end()


let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"


nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <A-g> :NERDTreeToggle<CR>
inoremap <A-g> :NERDTreeToggle<CR>

inoremap <expr> <CR> pumvisible() ? asyncomplete#close_popup() . "\<CR>" : "\<CR>"

:colorscheme nightfox

