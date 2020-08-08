"行番号を表示
set number
"入力モードでTabキー押下時に半角スペースを挿入
set expandtab
"インデント幅
set shiftwidth=2
"タブキー押下時に挿入される文字幅を指定
set softtabstop=2
"ファイル内にあるタブ文字の表示幅
set tabstop=2
"1つ前の行に基づくインデント
set autoindent
"インデントの自動増減
set smartindent
"現在のラインにアンダーラインを引く
set cursorline
"シンタックスハイライトをオン
syntax on
"インクリメンタルサーチをオン
set incsearch
"検索結果をハイライト
set hlsearch
"タグファイル
set tags=./tags;,tags;
"オムニ補完用
filetype plugin on
"backspaceで行頭も削除
set backspace=indent,eol,start
"ポップアップ画面のカラーを変更
highlight Pmenu ctermfg=Black ctermbg=Magenta guibg=Magenta
"vi互換を切る
set nocompatible
"ファイル書き込み時にバックアップを作らない
set nobackup
set nowritebackup
set noswapfile
"airline用の設定
let g:airline#extensions#tabline#enabled = 1
"govim用の設定
set ttymouse=sgr
set updatetime=500
set balloondelay=250
set signcolumn=number
set mouse=a
if has("patch-8.1.1904")
  set completeopt+=popup
  set completepopup=align:menu,border:off,highlight:Pmenu
endif
"fzf用の設定
set rtp+=~/.fzf
