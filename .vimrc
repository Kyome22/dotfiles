"Vimの設定
"補完
set wildmenu wildmode=list:full

"シンタックスハイライト
set nohlsearch
filetype plugin indent on
syntax on

"カラー設定
highlight Normal ctermbg=black ctermfg=grey
highlight StatusLine term=none cterm=none ctermfg=black ctermbg=grey
highlight CursorLine term=none cterm=none ctermfg=none ctermbg=darkgray

"行番号
set number

"エンコード
set encoding=utf-8
set fileencoding=utf-8

"インデント時の設定
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set display=lastline

"マウス操作
set mouse=a
set ttymouse=xterm2
set scrolloff=3

"入力操作
set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>,[,],~

"検索機能
set incsearch
set ignorecase

"クリップボード
set clipboard+=unnamed

"キーマップ
noremap <C-a> <HOME>
noremap! <C-a> <HOME>

noremap <C-e> <END>
noremap! <C-e> <END>

noremap <C-k> <Esc>D
noremap! <C-k> <Esc>D

noremap <C-x> <Esc>:wq<CR>
noremap! <C-x> <Esc>:wq<CR>

noremap <C-z> <Esc>:undo<CR>
noremap! <C-z> <Esc>:undo<CR>

inoremap <C-i> <Esc>gg=G<CR>
nnoremap <C-i> <Esc>gg=G<CR>
