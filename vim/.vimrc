" Setup colorscheme
colorscheme nord
set t_Co=256
set background=dark

" Setup lightline
let g:lightline = { 'colorscheme': 'nord' }
set laststatus=2
set noshowmode

" Setup editor
filetype on
filetype plugin on
filetype indent on
syntax on
set wildmenu
set showcmd
set hlsearch
set number

" Highlight trailing whitespaces
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

" Setup indentation
command IndentTabs :set noexpandtab shiftwidth=8 softtabstop=0
command IndentSpaces :set expandtab shiftwidth=4 softtabstop=4
IndentSpaces
set smarttab
set smartindent

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
