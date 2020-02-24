call plug#begin('~/.vim/plugged')
" must
Plug 'chrisbra/vim-commentary'
Plug 'easymotion/vim-easymotion'
Plug 'bkad/CamelCaseMotion'

Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-peekaboo'

" style
Plug 'itchyny/lightline.vim'
Plug 'cocopon/iceberg.vim'
Plug 'gkeep/iceberg-dark'
Plug 'Yggdroot/indentLine' 
Plug 'vim-scripts/vim-gitgutter'

" others
Plug 'sheerun/vim-polyglot'
Plug 'tyru/open-browser.vim'
Plug 'townk/vim-autoclose'

" LSP
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'

" Ruby on Rails
Plug 'tpope/vim-rails'

" Go
Plug 'mattn/vim-goimports'

" JavaScript
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" Vue
Plug 'tomtom/tcomment_vim'

call plug#end()

