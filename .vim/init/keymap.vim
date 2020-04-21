let mapleader = "\<Space>"

noremap <Leader>] :source ~/.vimrc<CR>
noremap <Leader>E :Exp<CR>

"easymotion
map <Leader><Leader> <Plug>(easymotion-prefix)

"camelcase
let g:camelcasemotion_key = '<leader>'

"fzf
nnoremap <Leader>gf :GFiles<CR>
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>s :GFiles?<CR>
nnoremap <Leader>h :History<CR>
nnoremap <Leader>F :GGrep<CR>
xnoremap <silent> <Leader>g y:Rg <C-R>"<CR>

"ctags
"tmux uses <C-t>
nnoremap <C-[> :po<CR>

"tab/window
"https://qiita.com/tekkoc/items/98adcadfa4bdc8b5a6ca
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sw <C-w>w
nnoremap sn <C-w>n
nnoremap sN <C-w>v
nnoremap st :<C-u>tabnew<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>wq<CR>
nnoremap qa :<C-u>qa<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap s+ <C-w>\|<C-w>_
nnoremap s= <C-w>=
nnoremap zz :update<CR>
 
" highlight
nnoremap noh :noh<CR>
" To clear the last used search pattern
nnoremap <CR> :let @/ = ""<CR>

" disable arrow key insert letter
" https://superuser.com/questions/237751/messed-up-keys-in-vim-when-running-inside-tmux
map <Esc>[B <Down>

inoremap <C-b> <Left>
inoremap <C-n> <Down>
inoremap <C-p> <Up>
inoremap <C-f> <Right>

