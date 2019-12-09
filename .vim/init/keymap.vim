let mapleader = "\<Space>"

noremap <Leader>] :source ~/.vimrc<CR>
noremap <Leader>e :Ex<CR>

"easymotion
map <Leader> <Plug>(easymotion-prefix)

"fzf
nnoremap <Leader>g :GFiles<CR>
nnoremap <Leader>s :GFiles?<CR>
nnoremap <Leader>h :History<CR>

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
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap s+ <C-w>\|<C-w>_
nnoremap s= <C-w>=
