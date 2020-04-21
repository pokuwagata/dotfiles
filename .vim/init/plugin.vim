call plug#begin('~/.vim/plugged')
" must
Plug 'chrisbra/vim-commentary'
Plug 'easymotion/vim-easymotion'
Plug 'bkad/CamelCaseMotion'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" style
Plug 'itchyny/lightline.vim'
Plug 'cocopon/iceberg.vim'
Plug 'gkeep/iceberg-dark'
Plug 'Yggdroot/indentLine' 
Plug 'vim-scripts/vim-gitgutter'

" others
Plug 'sheerun/vim-polyglot'

call plug#end()

