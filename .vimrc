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


"遅延ローディングの設定
augroup lazy-load
  autocmd!
  autocmd FileType go packadd! govim
  autocmd FileType elm packadd! elm-vim
augroup END
