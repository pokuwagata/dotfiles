syntax on

set relativenumber

set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set ambiwidth=double

set clipboard=unnamed,autoselect
set backspace=indent,eol,start
let g:auto_save = 1

set noswapfile
set nobackup
set nowritebackup

" for coc.vim
" set updatetime=300
" set shortmess+=c
" set signcolumn=yes

" for vim-lsp
let g:lsp_diagnostics_enabled = 0

" for fzf
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

