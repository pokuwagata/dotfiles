call plug#begin('~/.vim/plugged')
" must
Plug 'chrisbra/vim-commentary'
Plug 'easymotion/vim-easymotion'
Plug 'svermeulen/vim-cutlass'
Plug 'bkad/CamelCaseMotion'

" Plug 'svermeulen/vim-yoink'
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
Plug '907th/vim-auto-save'
Plug 'sheerun/vim-polyglot'
Plug 'tyru/open-browser.vim'

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
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

