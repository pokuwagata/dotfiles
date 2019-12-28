let NERDTreeShowHidden=1
"tmux doesn't support the terminfo capability bce (back color erase)
set background=dark
colorscheme iceberg

set list
set listchars=space:･,tab:¦･,trail:-,nbsp:%,eol:↲
hi SpecialKey ctermfg=238
hi NonText ctermfg=239

" lightline
set noshowmode
set laststatus=2
let g:lightline = {
\ 'colorscheme': 'seoul256',
\ }

