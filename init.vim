lua require('settings')
lua require('maps')
lua require('plugins')

call plug#begin()

Plug 'https://github.com/preservim/nerdtree'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plug 'MunifTanjim/nui.nvim'
Plug 'xeluxee/competitest.nvim'
Plug 'manzeloth/live-server'

call plug#end()


let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"

nnoremap <A-g> :NERDTreeToggle<CR>
inoremap <A-g> <CMD>:NERDTreeToggle<CR>
 

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

:colorscheme nightfox 

