# TODO

## インストールスクリプト

- [ ] .vimディレクトリが存在していても更新してほしい
- [ ] .vimファイル以外のsymlinkは貼らないで欲しい
- [ ] .vimディレクトリを削除するとvim-plugでインストールされた内容もクリアされるので:PlugClean, :PlugInstallが必要になる

## vim

### TODO

- [ ] helpの操作を覚える
- [ ] 画面分割のキーを割り当てる
- [x] init/keymap.vimの変更が反映されないのはなぜ？
- [x] vim-airlineのthemeがうまく動作しない
  - <https://unix.stackexchange.com/questions/348771/why-do-vim-colors-look-different-inside-and-outside-of-tmux>
- [ ] .vim/pluggedの中はどうgit管理されているのか不明
  - <https://danielmiessler.com/blog/git-modified-untracked/>
- [ ] easy-motionはLeaderkey1つでいい
- [ ] 矢印キーと隣接する文字が重なる
- [ ] ショートカットキーでインデントしたい
- [ ] markdownでインデントを継続して欲しい
- [ ] tabの操作を覚える
- [ ] 水平分割を縦分割に変更できないか？
- [ ] vimのブックマークとは？

### ハマり

- .vimディレクトリ内を再帰的にsymlink貼れてなくてvimrcの設定が反映されなかった
  - cp -rsでいけたが、lnでは無理なのか？
- git-fugitiveはGit Repository配下でしか動作しない（symlink先はダメみたい）
- :Ggrep hogeは:copenでquick fix listから操作、:cn, :cp, :ccl
  - 通常のウィンドウと同じ
  - <https://medium.com/usevim/vim-101-quickfix-and-grep-c782cb65e524>
- powerlineはrictyで使用するには追加のフォントが必要
  - また、追加で.vimないで文字を定義したりするのが煩わしいので使わない

### メモ

- fzfはまだ使い所が局所的なので入れない...?
  - :Historyで履歴からファイルを開ける
- Gstatus→ Gdiffでgitの差分を確認しやすい
  - fzfのGFiles?がより便利


## tmux

- [ ] 分割ウィンドウの幅変更したい

## Git

- あまり使いこなせていないコマンド
  - git diff
    - <https://qiita.com/shibukk/items/8c9362a5bd399b9c56be>
  - git ls-files
    - <https://qiita.com/zimathon/items/d964c4b3cc688cb2d114>
