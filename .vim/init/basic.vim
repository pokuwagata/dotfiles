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

function! s:on_lsp_buffer_enabled() abort
  setlocal omnifunc=lsp#complete
  setlocal signcolumn=yes
  nmap <buffer> gd <plug>(lsp-definition)
  nmap <buffer> <f2> <plug>(lsp-rename)
  nmap <buffer> = <plug>(lsp-document-format)
  " refer to doc to add more commands
endfunction

augroup lsp_install
  au!
  " call s:on_lsp_buffer_enabled only for languages that has the server registered.
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

