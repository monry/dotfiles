" キーマップ変更用の変数
let mapleader = " "

" 基本設定
set nobackup
set nowritebackup
set noswapfile
set history=500
set ruler
set showcmd
set incsearch
set laststatus=2
set modeline
set modelines=5

" Syntax highlight
syntax on

" インデント関連
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set shiftround
set expandtab

" 改行などの不可視文字を表示
set list listchars=tab:»·,trail:-,eol:↲,extends:»,precedes:«,nbsp:·
highlight SpecialKey ctermfg=240 guibg=NONE guifg=#585858
highlight NonText ctermfg=66 guibg=NONE guifg=#5f8787

" 行連結時にスペースを入れない
set nojoinspaces

" 行番号表示
set number

" キーバインド
map J gJ

" vim:set ft=vimrc:
