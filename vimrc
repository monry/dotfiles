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
" 全角スペース対応
function! ActivateInvisibleIndicator()
	syntax match InvisibleJISX0208Space "　" display containedin=ALL
	highlight InvisibleJISX0208Space term=underline ctermbg=Blue guibg=darkgray gui=underline
endfunction
augroup invisible
	autocmd! invisible
	autocmd BufNew,BufRead * call ActivateInvisibleIndicator()
augroup END

" vim:set ft=vimrc:
