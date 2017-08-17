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
set hlsearch
set laststatus=2
set modeline
set modelines=5
set textwidth=0

" ステータスライン
set statusline=%<%n:%t\ \<%F\>\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']['.&ft.']'}%=%l,%c%V%8P

" Syntax highlight
syntax on
colorscheme ron

" インデント関連
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set shiftround
set expandtab

" 改行などの不可視文字を表示
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
highlight SpecialKey ctermfg=240 guibg=NONE guifg=#585858
highlight NonText ctermfg=66 guibg=NONE guifg=#5f8787

" 行連結時にスペースを入れない
set nojoinspaces

" 行番号表示
set number

" キーバインド
map J gJ

" ファイルタイプ別
"" gitcommit
autocmd FileType gitcommit setlocal textwidth=0 shiftwidth=2 softtabstop=2 expandtab

" vim:set ft=vim:
