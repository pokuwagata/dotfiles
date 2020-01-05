# rails-todos

- [x] Syntax highlighting
  - 特に何も入れなくてもまあまあ効いてた
  - [ ] Ruby
  - [x] Rails
    - ハイライト機能を含む総合的なプラグインらしいrails-vimを入れた
    - とりあえず動作しているっぽい
- [ ] End-wise
- [x] Linting
- [x] Navigation between files
- [x] LSP
  - [x] プロジェクト全体でシンボルジャンプ
  - [x] キーマップ設定
- [ ] Ctags
- [ ] Snippet
- [x] rvm
  - <https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-macos>
  - <https://github.com/rbenv/rbenv#how-rbenv-hooks-into-your-shell>
  - rbenv initを実行すると、rbenv initをzshrcに含めるように案内されるので追加
  - rvm global 2.7.0した後にsourceしたらruby --versionに反映された

## ハマり

### vim-lsp

- :LspInstallServerして:LspStatusしたがexited
- ログを確認したところ存在しないsolargraphを参照している模様
- :LspInstallServerは一体どこにsolargraphを入れた？
  - rvmを使用しているのでそっちに入れたかと思いきや.rbenv/shims/には何もない
  - 以下に入っていた

```
❯ la plugged/vim-lsp-settings/servers/solargraph
```

- solargraphに対してpathが通っているとvim-lspはそちらを利用する仕様になっていた模様

```
~/.vim
❯ mv /usr/local/bin/solargraph /usr/local/bin/bk-solargraph
```

- 名前を変更して無効化するとvim-lsp-settings配下から使用された

### rubcop
- `$ bundle`すると

```
To update to the latest version installed on your system, run `bundle update --bundler`.
To install the missing version, run `gem install bundler:1.16.6`
```

- railsプロジェクト配下でrubocop実行するとエラー

```
❯ rubocop
Traceback (most recent call last):
        2: from /usr/local/bin/rubocop:22:in `<main>'
        1: from /usr/local/Cellar/ruby/2.6.5/lib/ruby/2.6.0/rubygems.rb:303:in `activate_bin_path'
/usr/local/Cellar/ruby/2.6.5/lib/ruby/2.6.0/rubygems.rb:284:in `find_spec_for_exe': can't find gem rubocop (>= 0.a) with executable rubocop (Gem::GemNotFoundException)
```

- railsプロジェクト配下だと何か問題が？

```
❯ bundle update --bundler
Your Ruby version is 2.6.5, but your Gemfile specified 2.5.3
```

- /usr/local/bin/rubocop を使いたい
  - gem uninstall rubocopしても存在しないと言われる
  - gemで管理しているわけではない？
  - なぜここにrubocopがある？
  - 中身は空だった

- ホームでrubocop実行しても同様のエラー発生

- そもそもrubocopをグローバルインストールする必要ないといえばない

- 今のローカルのRubyはいったいどうなっているのか意味不明
  - このsymlinkはいつ作られるものなのか？

```
❯ ls -al /usr/local/bin | grep ruby
lrwxr-xr-x   1 nakahata admin       31 12 28 14:27 bundle -> ../Cellar/ruby/2.6.5/bin/bundle
lrwxr-xr-x   1 nakahata admin       32 12 28 14:27 bundler -> ../Cellar/ruby/2.6.5/bin/bundler
lrwxr-xr-x   1 nakahata admin       28 12 28 14:27 erb -> ../Cellar/ruby/2.6.5/bin/erb
lrwxr-xr-x   1 nakahata admin       28 12 28 14:27 gem -> ../Cellar/ruby/2.6.5/bin/gem
lrwxr-xr-x   1 nakahata admin       28 12 28 14:27 irb -> ../Cellar/ruby/2.6.5/bin/irb
lrwxr-xr-x   1 nakahata admin       29 12 28 14:27 rake -> ../Cellar/ruby/2.6.5/bin/rake
lrwxr-xr-x   1 nakahata admin       47  3 12  2019 rbenv-install -> ../Cellar/ruby-build/20190130/bin/rbenv-install
lrwxr-xr-x   1 nakahata admin       49  3 12  2019 rbenv-uninstall -> ../Cellar/ruby-build/20190130/bin/rbenv-uninstall
lrwxr-xr-x   1 nakahata admin       29 12 28 14:27 rdoc -> ../Cellar/ruby/2.6.5/bin/rdoc
lrwxr-xr-x   1 nakahata admin       27 12 28 14:27 ri -> ../Cellar/ruby/2.6.5/bin/ri
lrwxr-xr-x   1 nakahata admin       29 12 28 14:27 ruby -> ../Cellar/ruby/2.6.5/bin/ruby
lrwxr-xr-x   1 nakahata admin       44  3 12  2019 ruby-build -> ../Cellar/ruby-build/20190130/bin/ruby-build
-rwxr-xr-x   1 nakahata admin      497  1 13  2019 ruby-parse
-rwxr-xr-x   1 nakahata admin      499  1 13  2019 ruby-rewrite
```

- もう面倒なのでrbenv入れてしまえばいいのでは
- rbenvを入れてreact-webpack-rails配下でrubocop実行

```
❯ rubocop
rbenv: version `ruby-2.5.3' is not installed (set by /Users/nakahata/.ghq/github.com/shakacode/react-webpack-rails-tutorial/.ruby-version)
```

- .ruby-versionで指定されているらしい
- 2.5.3を入れて、gem install rubocop
- 実行できたが、用意されていた.rubocop.ymlが古いrubocop用らしく失敗した

```
❯ rubocop
.rubocop.yml: Metrics/LineLength has the wrong namespace - should be Layout
Error: RuboCop found unsupported Ruby version 2.2 in `TargetRubyVersion` parameter (in .rubocop.yml). 2.2-compatible analysis was dropped after version 0.69.
Supported versions: 2.3, 2.4, 2.5, 2.6, 2.7
```

- 新規に作成したディレクトリだと正常に動作した

## 整理

- gemがrubyで書かれたパッケージ
  - `$ gem install ...`
- bundlerはgemfileを元にgemを依存管理できる
  - bundler自体もgem
  - bundler管理のgemを実行する場合はbundle exec
- npm installのように自動的にGemfileに追加しつつインストールするコマンドはない？

- vscodeのmarkdown lintルール変えたい