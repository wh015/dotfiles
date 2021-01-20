" Setup colorscheme
colorscheme gruvbox
set t_Co=256
set background=dark

" Setup editor
filetype on
filetype plugin on
filetype indent on
syntax on
set wildmenu
set showcmd
set hlsearch
set number

:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

" Setup indentation
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set smartindent
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

" Setup key bindings
" Remove trailing whitespaces
:nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
" Tab navigation
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
