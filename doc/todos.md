# TODO

## インストールスクリプト

- [ ] .vimディレクトリが存在していても更新してほしい
- [ ] .vimファイル以外のsymlinkは貼らないで欲しい
- [ ] .vimディレクトリを削除するとvim-plugでインストールされた内容もクリアされるので:PlugClean, :PlugInstallが必要になる

## vim

### TODO

- [ ] helpの操作を覚える
- [x] 画面分割のキーを割り当てる
- [x] init/keymap.vimの変更が反映されないのはなぜ？
- [x] vim-airlineのthemeがうまく動作しない
  - <https://unix.stackexchange.com/questions/348771/why-do-vim-colors-look-different-inside-and-outside-of-tmux>
- [ ] .vim/pluggedの中はどうgit管理されているのか不明
  - <https://danielmiessler.com/blog/git-modified-untracked/>
- [x] easy-motionはLeaderkey1つでいい
- [x] 矢印キーと隣接する文字が重なる
  - terminalとvimrcのambiwidthで解決？
- [x] ショートカットキーでインデントしたい
  - >>, tabで可能
- [x] markdownでインデントを継続して欲しい
  - set autoindent
- [x] tabの操作を覚える
- [x] 水平分割を縦分割に変更できないか？
  - 無理っぽいので諦める
- [ ] vimのブックマークとは？
- [x] swapファイルをgitで無視するか作らなくてもいいのでは
  - 作らないように設定
- [x] vimからディレクトリを作成したりファイルを作成したりしたい
  - :Exでエクスプローラモードにして、%で新規ファイル、dで新規ディレクトリ
  - nerdtreeでできることはだいたいできるっぽい
    - <https://blog.stevenocchipinti.com/2016/12/28/using-netrw-instead-of-nerdtree-for-vim/>
- [x] vimで名前を付けて保存はできるのか
  - :e ファイルパスで新規ファイル
  - :w ファイルパスで名前を指定して保存
- [ ] macのクリップボードとヤンクで競合しないようにしたい気もする
- [ ] fzf git filesで日本語を正しく扱えない？
- [ ] 垂直分割かつ空のバッファを開いてフォーカス当てたい
- [ ] markdownの場合だけフォントサイズや行間を変えられないか
- [ ] markdownのリアルタイムプレビューはできないか
- [ ] markdownのlinter欲しい

### ハマり

- .vimディレクトリ内を再帰的にsymlink貼れてなくてvimrcの設定が反映されなかった
  - cp -rsでいけたが、lnでは無理なのか？
- git-fugitiveはGit Repository配下でしか動作しない（symlink先はダメみたい）
- :Ggrep hogeは:copenでquick fix listから操作、:cn, :cp, :ccl
  - 通常のウィンドウと同じ
  - <https://medium.com/usevim/vim-101-quickfix-and-grep-c782cb65e524>
- powerlineはrictyで使用するには追加のフォントが必要
  - また、追加で.vimないで文字を定義したりするのが煩わしいので使わない
- 職場環境でtmux内でiceberg.vimが反映されない問題が再発
  - 結局.tmux.conf内で`set -g default-terminal "screen-256color"`の”を付けて再起動したら直った
  - しかし"を外しても元には戻らなかった
  - style.vimの`background=dark`は関係ないみたい
  - 結局謎

### メモ

- fzfはまだ使い所が局所的なので入れない...?
  - :Historyで履歴からファイルを開ける
- Gstatus→ Gdiffでgitの差分を確認しやすい
  - fzfのGFiles?がより便利
- fzfをキーから呼べるようにすると超便利


## tmux

- [ ] 分割ウィンドウの幅変更したい

## Git

- あまり使いこなせていないコマンド
  - git diff
    - <https://qiita.com/shibukk/items/8c9362a5bd399b9c56be>
  - git ls-files
    - <https://qiita.com/zimathon/items/d964c4b3cc688cb2d114>
- tig 使えるようにしたい
  - <https://qiita.com/suino/items/b0dae7e00bd7165f79ea>
- tig, figitive解説
  - <http://wakame.hatenablog.jp/entry/2017/05/03/222511>

