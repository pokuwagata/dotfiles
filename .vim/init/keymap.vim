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

" open-browser.vim
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

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

"for vim-lsp
"function! s:on_lsp_buffer_enabled() abort
"  setlocal omnifunc=lsp#complete
"  setlocal signcolumn=yes
"  
"  nmap <buffer> <Leader>gd :<C-u>LspDefinition<CR>
"  nmap <buffer> <Leader>re :<C-u>LspRename<CR>
"  nmap <buffer> <Leader>= :<C-u>LspDocumentFormat<CR>
"  nmap <buffer> <Leader>ds :<C-u>LspDocumentSymbol<CR>
"  nmap <buffer> <Leader>ws :<C-u>LspWorkspaceSymbol<CR>
"  " refer to doc to add more commands
"endfunction
"
"augroup lsp_install
"  au!
"  " call s:on_lsp_buffer_enabled only for languages that has the server registered.
"  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
"augroup END

" coc.vim
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
" Find symbol of current document
nnoremap <silent> <leader>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <leader>s  :<C-u>CocList -I symbols<cr>

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nmap <leader>rn <Plug>(coc-rename)

" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)

