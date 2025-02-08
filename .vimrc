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
"シンタックスハイライトをオン
syntax on
"インクリメンタルサーチをオン
set incsearch
"検索結果をハイライト
set hlsearch
filetype plugin on
"backspaceで行頭も削除
set backspace=indent,eol,start
"vi互換を切る
set nocompatible
"ファイル書き込み時にバックアップを作らない
set nobackup
set nowritebackup
set noswapfile
" vim-airlineの設定
let g:airline#extensions#tabline#enabled=1
"fzf用の設定
set rtp+=/usr/local/opt/fzf
set rtp+=~/.fzf
" filetype on
filetype plugin on
"バッファ移動
nnoremap <silent> <C-j> :bprev<CR>
nnoremap <silent> <C-k> :bnext<CR>
set clipboard+=unnamed
" vimhelpgeneratorの設定
let g:vimhelpgenerator_defaultlanguage='en'
" vim-lspの設定
let g:lsp_diagnostics_virtual_text_enabled = 0
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_document_code_action_signs_enabled = 0
let g:lsp_diagnostics_highlights_insert_mode_enabled = 0
let g:lsp_diagnostics_echo_delay = 50
let g:lsp_diagnostics_highlights_delay = 50
let g:lsp_diagnostics_signs_delay = 50
set omnifunc=lsp#complete
" copilot.vimの設定
"let g:copilot_enabled = v:false
imap <C-\> <Plug>(copilot-suggest)
