#!/bin/bash
#インストールシェルスクリプト
#コピーするドットファイルを選択できる様にする
#vimのプラグインもインストールできる様にする

ORIGIN=$(pwd)
DIR="$HOME/.vim/pack/package/start"

function copy_vimrc() {
  ln -sf ~/dotfiles/.vimrc ~/.vimrc
}

function copy_bashrc() {
  ln -sf ~/dotfiles/.bashrc ~/.bashrc
}

function copy_tmuxconf() {
  ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
}

#ターゲットディレクトリにプラグインがインストールされているかをチェック
#インストールされていない場合はインストール
#引数
#プラグイン名
#github URL
function check_and_install() {
  if [ ! -d $1 ]; then
    git clone $2
  fi
}

#install vim plugin
function install_vim_plugin() {
  if [ ! -d $DIR ]; then
    mkdir -p $DIR
  fi
  #ターゲットディレクトリに移動
  mkdir -p $DIR
  cd $DIR
  #プラグインのインストール
  check_and_install "lexima.vim" "https://github.com/cohama/lexima.vim.git"
  check_and_install "vim-addon-mw-utils" "https://github.com/MarcWeber/vim-addon-mw-utils.git"
  check_and_install "vim-snipmate" "https://github.com/garbas/vim-snipmate.git"
  check_and_install "emmet-vim" "https://github.com/mattn/emmet-vim.git"
  check_and_install "tlib_vim" "https://github.com/tomtom/tlib_vim.git"
  check_and_install "vim-airline" "https://github.com/vim-airline/vim-airline.git"
  check_and_install "vim-snippets" "https://github.com/honza/vim-snippets.git"
  check_and_install "govim" "https://github.com/govim/govim.git"
  check_and_install "iceberg.vim" "https://github.com/cocopon/iceberg.vim.git"
  check_and_install "coc" "https://github.com/neoclide/coc.nvim.git"
}

#引数がない場合は全てコピー
if [ $# -eq 0 ]; then
  copy_vimrc
  install_vim_plugin
  copy_bashrc
  copy_tmuxconf
fi

#引数がvimなら.vimrcのコピーとプラグインのインストール
if [ $1 = "vim" ]; then
  copy_vimrc
  install_vim_plugin
fi

#引数がbashなら.bashrcのコピー
if [ $1 = "bash" ]; then
  copy_bashrc
fi

#引数がtmuxなら.tmux.confのインストール
if [ $1 = "tmux" ]; then
  copy_tmuxconf
fi

cd $ORIGIN
