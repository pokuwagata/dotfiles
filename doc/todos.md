# TODO

## インストールスクリプト

- [ ] .vimディレクトリが存在していても更新してほしい
- [ ] .vimファイル以外のsymlinkは貼らないで欲しい
- [ ] .vimディレクトリを削除するとvim-plugでインストールされた内容もクリアされるので:PlugClean, :PlugInstallが必要になる
- [x] .vim/plugged以外は、ディレクトリに対するsymlinkを貼ればいいのでないか
  - [x] plugged以外のディレクトリに対してsymlinkを貼るスクリプトを書く
    - pluggedの参照を~/.vimから変更することはできないか→難しそう
    - [x] そもそもdotfilesにplugged含めなければ.vimディレクトリに対する参照にしても良いのでは？
      - これでいけた。pluggedは自動的にdotfilesの方に作成されるので問題なし
      - gitignoreにplugged入れておけばいい
      - [ ] Github上にはplugged残ってしまったので、削除コミットした方がいい

## vim

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
    - <https://blog.stevenocchipinti.com/2016/12/28/using-netrw-instead-of-nerdtree-for-vim/>
- [x] vimで名前を付けて保存はできるのか
  - :e ファイルパスで新規ファイル
  - :w ファイルパスで名前を指定して保存
- [ ] fzf git filesで日本語を正しく扱えない？
- [ ] 垂直分割かつ空のバッファを開いてフォーカス当てたい
- [x] fzfのRg試す
  - git-grepのように配下のファイルをgrepするわけではないっぽい？よく分からない
  - ripgrepのインストールが別に必要だった。
- [x] カーソルを変えられないか？
  - <https://vim.fandom.com/wiki/Change_cursor_shape_in_different_modes>
- [x] gitで差分が発生していたら横に表示して欲しい
- [x] 半角空白を表示
  - というよりはインデントが分かったほうが嬉しい→プラグインが動作しない
    - 半角空白の表示のためにハイライトの色を変更したところ、見えるようになった。動作はしていた模様
  - <https://stackoverflow.com/questions/1675688/make-vim-show-all-white-spaces-as-a-character>
- [x] vim-lspでjsxファイルを取り扱いたい
- [x] 開いているファイルをgit-diffしたい
  - figitiveから:Gdiff
- [x] fzfでgit-grepできるようにする
  - <https://github.com/junegunn/fzf.vim>
- [ ] コメントを含むソースコードをvimへペーストするとコメントが増えるのなぜ
- [x] 範囲選択の色変えたい
- [x] 行番号の色変えたい
  - 変えてみたが、見えにくいぐらいでちょうどよいかも
- [ ] `xnoremap <silent> <leader>ag  y:Ag <C-R>"<CR>`の意味を理解する
- [x] vimの言語を英語にしたい
- [ ] コメントを含む部分をgccしたらコメントも含めてコメントアウトして欲しい
  - 難しそう。その用途なら素直に行頭挿入した方が良いのかも
- [x] fzfでvim-yoinkの内容を絞り込んで貼り付けしたい
  - 貼り付けコマンドがneovim用に書かれているっぽくてダメだたｔ
  - <https://qiita.com/karasu78/items/d1489f7cff0c2e0be890>
  - でもvim-peekabooでも別に良さそう
  - これでfzfの絞り込みできるっぽい
    - <http://noahorberg.hatenablog.com/entry/2019/12/15/144256>
  - [x] vimのレジスタについて整理する
    - <http://noahorberg.hatenablog.com/entry/2019/12/15/144256>
- [ ] bash-language-server: exited 
- [x] コメントで改行したときにコメント継続しない
  - <https://qiita.com/necojackarc/items/1f997481764ed42023a7>
  - 単純にbasic.vimに書いてもダメだったのでafter/plugin/に入れた
  - でもファイルタイプvimだけはなぜかダメ。goやshellは大丈夫だった
    - 単にafter配下のsymlinkが正しくないことが原因だったため、解決した
- [x] vimのコマンドラインでカーソル移動のショートカットキー使えないか
  - <https://stackoverflow.com/questions/2075569/how-can-i-move-around-in-the-vim-command-line>
- [x] カーソルが_だと位置がわかりにくい。ブロックで色を変えたら良いのでは？
  - [x] もしくはカレントの行番号の色を変えるべき
    - set cursorline
    - hi CursorLineNr ctermfg=245 ctermbg=235 cterm=boldk
    - <https://stackoverflow.com/questions/58174536/vim-remove-underline-from-line-number>
- [x] キャメルケースで単語単位削除したい
- [x] xが使えないのは不便
  - xlやdlで代用できる。cutlassを入れるとこうなってしまうらしい
  - できれば1キーでやりたいところではある
- [ ] snippet触ってみる
- [ ] vim-template触ってみる
- [ ] vim-scriptでgccできない（vim-polygot?)
- [x] leader e ダメ
  - leader Eで代用した
- [ ] ctrl + kでtmux逆周りしたい
- [x] optionキーでターミナル上で単語移動したい
  - ターミナル上は可能
  - vimではできないが、C-oでnormalに戻って動けばいいという話がある
    - <https://vi.stackexchange.com/questions/10296/navigation-in-insert-mode>
- [ ] カーソル上の単語で検索したい
- [x] 検索結果をハイライトして欲しい
  - [x] ハイライトした結果を消したい <https://stackoverflow.com/questions/657447/vim-clear-last-search-highlighting>
- [ ] cutlass入れている＋xnoremap x dしているが、visual modeでdを押すと削除した内容がレジスタに登録されてしまう
- [ ] autosaveされるとuが効かない？(cutlassのせいかも? →OFFにしたけど関係なかった, filetype:goの場合だけ起きる？)
  - vim-goを削除したら直ったぽい
- [ ] filetype:go の場合に{}が補完されるとエンターを押した場合のインデントがうまくいかない？
  - <https://vi.stackexchange.com/questions/233/how-can-i-automatically-indent-on-new-lines>
  - 多分どのファイルタイプでも正しく動いていない
- [ ] vim-plugでプラグインを削除するときに:PlugClean以外できないものか

### coc.nvim

- [x] coc.nvim] error: Some plugin change completeopt on insert mode! 
  - "suggest.autoTrigger": "trigger"　したら発生しなくなった
  - 結局どういう意図のエラーなのかよく分からない
  - language-serverをインストールしていれば対応するファイルでは補完された
- [ ] coc.rename動かない？
- [ ] どのlanguage serverを使用しているか設定ファイルに記載したら別の環境でもダウンロードできるようにしたい
  - これでいけそう　let g:coc_global_extensions = ['coc-solargraph']
  - <http://blog.jamesnewton.com/setting-up-coc-nvim-for-ruby-development>
- [ ] [coc.nvim] The workspace is too large to index (5755 files, 5000 max)   

### ハマり

- E464: Ambiguous use of user-defined command
  - :Exでヒットするコマンドがプラグインによって追加されたことが原因
  - <https://superuser.com/questions/1322471/vim-e464-ambiguous-use-of-user-defined-command>

- vim-language-serverがエラー

  ```
  Fri Jan  3 00:55:38 2020:["<---(stderr)",1,"vim-language-server",["/Users/nakahata/.vim/plugged/vim-lsp-settings/servers/vim-language-server/node_modules/vim-language-server/out/index.js:14041","    let isMatch = picomatch(String(patterns[i]), { ...options, onResult }, true);","                                                   ^^^","SyntaxError: Unexpected token ...","    at createScript (vm.js:56:10)","    at Object.runInThisContext (vm.js:97:10)","    at Module._compile (module.js:542:28)","    at Object.Module._extensions..js (module.js:579:10)","    at Module.load (module.js:487:32)","    at tryModuleLoad (module.js:446:12)","    at Function.Module._load (module.js:438:3)","    at Module.require (module.js:497:17)","    at require (internal/module.js:20:19)","    at Object.<anonymous> (/Users/nakahata/.vim/plugged/vim-lsp-settings/servers/vim-language-server/node_modules/vim-language-server/bin/index.js:3:1)",""]]
  ```

  - Node.js v6→v10に更新したら動作した

- なぜかstyle.vimを開くとgit-gutterがエラーを起こす
  - その後autosaveもエラーを起こす
  - 両方のプラグインをアンインストールしてもダメ
  - 1行目の`let NERDTreeShowHidden=1`を消すと発生する模様
    - コメントアウトならOK
    - なぜ？
- 可視化した文字の色を変えたい
  - <https://vi.stackexchange.com/questions/6136/how-to-dim-characters-from-set-list>
  - <http://cohama.hateblo.jp/entry/2013/08/11/020849>
- Yggdroot/indentLine
  - vim8で動かないっぽい
  - <https://github.com/Yggdroot/indentLine/issues/269>
  - tab文字可視化できればそれでいいと言えばいい
- LspDocumentRangeFormat
  - Document range formatting not supported for typescriptreact 
  - なんか動作しない
- vim-lspで.tsxファイルを開いてもLSPが提案されない
  - whitelist登録しても機能していない模様
  - 逆にwhitelist登録消したら動作し始めた。謎
  - なんか動作するときとしないときがある
  - <https://blog.micheam.com/2019/05/21/vim-lsp-setting-for-typescript/>
- vim-lspで.jsファイルを開いたときにLSPを提案されない問題
  - 1度vim-lsp-settingsをアンインストールしたら直った
    - そのときはtypescript-language-serverが入った
- vim-lspの導入はスムーズに行ったが、エラーマークが正しく表示されない問題に直面
  - <https://github.com/prabirshrestha/vim-lsp/issues/320>
  - どうもvimのバージョンが古いことが原因っぽい
  - brew upgrade vimで8.0→8.2に更新して解決したっぽい
    - 初期表示時にはマークが出ない問題が発生
    - というよりは、表示に時間がかかる？　git-gutterと競合する問題もある
    - aleの方が良さそうなのでこっちを使うことにする
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
  - 職場のnodebrewが動作しない
    - nodebrewのパスが通っていない、nodebrewのパスよりローカルのnodeのパスが先になっている
    - zshrcに書いて解決する。しかしnodebrewはユーザフォルダがnakahataになってしまっているので微妙
- cdすると以下のエラー

   ```
   dyld: Library not loaded: /usr/local/opt/readline/lib/libreadline.7.dylib
     Referenced from: /usr/local/bin/gawk
       Reason: image not found
  ```

  - `brew link readline --force`したがダメ
  - gawkをuninstall, installする
    - <https://github.com/atomantic/dotfiles/issues/23>
    - 解決した

### メモ

- fzfはまだ使い所が局所的なので入れない...?
  - :Historyで履歴からファイルを開ける
- Gstatus→ Gdiffでgitの差分を確認しやすい
  - fzfのGFiles?がより便利
- fzfをキーから呼べるようにすると超便利
- vim-lspはソースコードを読まないと動作がよく分からない
  - vim-scriptをちゃんと読めるようにしないときつくなってきた
- tmuxでvimを2painで開いているとときどき表示が崩れる
- figitive Grep, Glogが色々使えそう
  <http://vimcasts.org/episodes/fugitive-vim-exploring-the-history-of-a-git-repository/>

## Shell

- [x] コマンドラインからGithubにリポジトリを作成したい
  - SSHキーによる認証失敗
    - <https://help.github.com/ja/github/authenticating-to-github/error-permission-denied-publickey>
    - 既存のSSHキーをGithubアカウントに登録
      - <https://help.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account>
    - `$ ssh -vT git@github.com`
      - `Hi pokuwagata! You've successfully authenticated, but GitHub does not provide shell access.`
      - 成功したっぽい
- [ ] hub deleteはない？
- [ ] ghq getしたディレクトリじゃないとC-gの候補には出てこない？
- [ ] なぜかカーソルが_になっていて、アンダーラインとかぶると認識できない
- [x] 何が起きたか確認したいときに便利そう
  - <https://stackoverflow.com/questions/16085958/find-the-files-that-have-been-changed-in-last-24-hours>
  - `find ~/.ghq/github.com/yasslab -mmin -5 -ls`
- [ ] optionキーで単語移動したい

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

