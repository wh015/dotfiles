" color mode
set t_Co=256

" decoration
syntax on
set wildmenu
set showcmd
set hlsearch
set number

" indentation
set shiftwidth=4
set softtabstop=4
set expandtab

" tabs navigation
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
