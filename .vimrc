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
"インデント時の設定
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set display=lastline
"set autoindent
"set smartindent
"マウス操作
set mouse=a
set ttymouse=xterm2
"入力操作
set backspace =indent,eol,start
set whichwrap =b,s,h,l,<,>,[,]
"インクリメントサーチ
set incsearch
"キーマップ
"inoremap <C-g> <esc>
"vnoremap <C-g> <esc>
inoremap <C-a> <esc>:w<CR>
nnoremap <C-a> :w<CR>
"nnoremap <C-e> :%!xxd<CR>
"nnoremap <C-r> :%!xxd -r<CR>
inoremap <C-z> <esc>:undo<CR>
nnoremap <C-z> :undo<CR>
inoremap <C-c> <esc>:redo<CR>
inoremap <C-x> <esc>:wq<CR>
nnoremap <C-x> :wq<CR>
"INSERT用キーマップ
inoremap [ []<Left>
"inoremap { {<CR>}<Del><Left><Home><Left><CR>
"inoremap { {}<Left>
"inoremap " ""<Left>
inoremap ' ''<Left>
"inoremap ( ()<Left>
inoremap ={ ={}<Left>
inoremap <C-e> <esc>gg=G<CR>
nnoremap <C-e> gg=G<CR>
