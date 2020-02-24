set list
set listchars=space:･,tab:¦･,trail:-,nbsp:%,eol:↲
hi SpecialKey ctermfg=238
hi NonText ctermfg=239
hi CursorLineNr ctermfg=245 ctermbg=235 cterm=bold
hi Visual ctermfg=252 ctermbg=95

"tmux doesn't support the terminfo capability bce (back color erase)
set background=dark
set cursorline
colorscheme iceberg

" lightline
set noshowmode
set laststatus=2
let g:lightline = {
\ 'colorscheme': 'seoul256',
\ }

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>\e[5 q\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>\e[5 q\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>\e[1 q\<Esc>\\"
else
  let &t_SI.="\e[5 q" "SI = INSERT mode
  let &t_SR.="\e[5 q" "SR = REPLACE mode
  let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
endif
