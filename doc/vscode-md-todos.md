# vscode-md-todos

## VSCode basic

- [x] VSCode の設定同期を学ぶ
  - workspace の json
  - extention
    - vsix からインストール <https://code.visualstudio.com/docs/editor/extension-gallery#_install-from-a-vsix>
    - extensions.json, .code-workspace
  - 結局はシンボリックリンクで git 管理 or Setting Sync
    - Setting Sync の方が VSCode フレンドリーだが
      - gist を利用した仕組みが少し煩雑
      - なにか問題が起きた時に対処しにくい
    - **とりあえず Setting Sync 使う**
  - 一応 VSCode 本体に同期機能を取り込む流れもあるみたい
    - <https://code.visualstudio.com/docs/editor/settings-sync>
    - まだプレビュー機能なので、現時点では Setting Sync の方が良いと思う
  - Github のアクセストークンをどう別端末から参照するか？
    - [x] Github の private リポジトリに格納した
- [ ] Snippet の設定の仕方を学ぶ（同期も）
  - Setting Sync で可能
- [x] Workspace の概念を学ぶ

## markdown を使う場面

- ブログの下書き
- チケットやコメントの下書き
- 個人的なメモ

## VSCode を使う場面

- TypeScript, React, Vue.js
- Markdown

- いちいち markdown の workspace 毎に.vscode は置きたくない
  - 1 つの markdown root workspace 配下に全ての markdown を配置する？
    - ghq で移動できないけど、まあ VSCode でしか開かないし...
    - でもソースコードを置いている workspace に md ファイルが含まれていることもある
      - 拡張機能は共通でインストール、settings.json で拡張子毎にコントロール
        - 例）　 vim.disableExtension: false
        - **言語毎に設定可能なのは VSCode の基本設定だけだった**
        - 明らかに markdown しか書かない workspace なら都度足すしかなさそう
        - 少し書きたいならコマンドパレットからオフにするしかない
- もっと workspace 活用しよう
  - Ctrl+r で workspace（というか最近開いたもの）を切り替えられる

## 求めること

- [x] Markdown 用の設定とフロントエンド用の設定を切り替えたい
  - 拡張子 or Workspace 設定
  - できれば拡張子で全部変わると嬉しいが難しい？**→ 無理**
  - VSCodeVim は無効にしたい →Wokrspace 毎に手動で設定すれば OK

## markdown 用の設定

- [x] Ctrl+a を使いたい
- [x] Ctrl+n を使いたい
- [x] Ctrl+k を使いたい
- [x] Prettier で整形したい
  - 既存の設定が Prettier になっていなかっただけだった
- [x] 今の拡張、ショートカットキーを整理したい

  - ショートカットキーはとりあえず色々有効にしておく

  ```
  見出しレベルの増減(ctrl+], ctrl+[)
  強調(option+b)
  enter key(ctrl+j)
  ```

## TODO

- [x] 一旦今の状態を Setting Sync で同期
- [x] settings.json 見直し
  - カテゴリ＋アルファベット順を意識した
  - 全部アルファベットのキーで並べ直してもいいかもしれないが...
- [x] keybindings.json 見直し
  - 今、意識して使っていないものは全部消した
- [x] extentions 見直し
  - Salesforce CLI, Java Debugger, Go を削除
- [x] snipet 使ってみる
- [x] markdown 用の設定を行う
- [ ] TypeScript 用の設定を行う
  - JSON to TS
  - JavaScript code snippets
- [ ] React 用の設定を行う
- [ ] フロントエンド
  - HTML
    - Auto Rename Tag
    - Highlight Matching Tag
    - emmet.showSuggestionsAsSnippets
  - CSS
    - CSS Peek
    - CSScomb
    - CSSTree validator
    - IntelliSense for CSS class names in HTML
  - pure static html
    - Live Server
  - [ ] その他
    - Path Intellisense
    - Code Spell Checker

## ハマり

- settings.json, keybindings.json の format は、なぜか空の workspace でのみ可能
  - <https://github.com/prettier/prettier-vscode/issues/911>
- 既存キーバインドの無効化
  - <https://code.visualstudio.com/docs/getstarted/keybindings#_removing-a-specific-key-binding-rule>
- vim.disable.. : true にしてもキーの動きがおかしい
  - vim.active は true のままのため、VSCodeVim のキーバインドは有効
  - workspace の VSCodeVim を無効化すれば OK
  - 特に設定ファイルに定義されるわけではないが、どの workspace で無効化されているかは記憶している模様
- markdown でスニペットの prefix 効かない
  - <https://github.com/Microsoft/vscode/issues/28048>
  - 結局、そんなに頻繁に利用しないのでコマンドパレットからで十分
  - 逆に markdown で suggest は鬱陶しい
- スニペットの body は array string じゃないといけない？
  - これはどうしようもないっぽい
  - シェルスクリプト書くか、<https://snippet-generator.app/?description=&tabtrigger=&snippet=hoge%0Ahoge%0Ahoge%0Ahoge&mode=vscode>
