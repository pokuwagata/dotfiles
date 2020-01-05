let NERDTreeShowHidden=1
"tmux doesn't support the terminfo capability bce (back color erase)
set background=dark
set cursorline
colorscheme iceberg

set list
set listchars=space:･,tab:¦･,trail:-,nbsp:%,eol:↲
hi SpecialKey ctermfg=238
hi NonText ctermfg=239
hi CursorLineNr ctermfg=245 ctermbg=235 cterm=bold
hi Visual ctermfg=252 ctermbg=95

" lightline
set noshowmode
set laststatus=2
let g:lightline = {
\ 'colorscheme': 'seoul256',
\ }

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[3 q" "EI = NORMAL mode (ELSE)
