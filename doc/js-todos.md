# js-todos

- [ ] Coc.vim
  - [ ] linterを動かしたい
  - [ ] 補完
- [ ] vim-lsp
  - typescriptreact
    - :LspStatus → 反応なし
    - :LspDocumentSymbol → Retrieving symbols not supported for typescriptreact
    - :LspInstallServer → E492: Not an editor command: LspInstallServer
  - typescript
    - 動作
  - javascriptreact
    - 動作しない
  - javascript
    - 動作（typescript-language-server）
  - vim-lsp-settingsでは現在は設定できない模様
    - 手動でtypescript-language-serverを登録
      - npm i -g で入れないとダメ（typescriptも必要）
    - 登録はできたが、:LspStatusするとnot running
    - vim-lsp-settingsでインストールしたtsserverとtypescript-language-serverを一旦削除
    - whitelistにtypescriptを加えると.tsファイルでLSPが動作した
    - つまりwhitelistの指定の問題？
      - typescript.tsx → typescriptreactに変更したら動作した
    - そもそも`g:lsp_settings`でwhitelistを上書きすればよいのでは
      - できた！！
        - と思ったら、できていなかった。.tsファイルを開いてlspを起動後にtsxファイルを開くと動くだけ
        - 最初にtsxファイルを開くと動かない
        - もう1度手動でwhitelistにtypescriptreact入れる場合を試す
- [x] ALE
  - eslintrcが含まれているディレクトリを開くと動作する
  - eslintのグローバルインストールは不要
- [x] syntax highlight
  - できているっぽい
  - [x] jsx, tsx
  - [x] typescript
- [ ] 保存時にprettier適用
  - vim-prettierは動作したが、auto-saveとは相性がよくない模様
  - aleでも動作しなかった
  - <https://prettier.io/docs/en/vim.html>
  - autocmd で設定すれば手動保存時は動作した
    - <https://www.dailysmarty.com/posts/how-to-setup-prettier-with-vim>
- [ ] Ctags
- [ ] Btagsの動作確認

## 参考

- <https://freshman.tech/vim-javascript/>
