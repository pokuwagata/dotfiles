# shell-gei

## 実現したいこと(MVP)

- シェル芸問題を解くための環境をDockerで構築する
- 過去に解いた問題や問題のインプットになるようなファイルはGithubで管理する
- 上記をvolumeでマウントする
- vimとzsh（補完）も動くようにしたい（dotfilesを流用？）

## 学び

- docker volume
  - docker run -it -v $(pwd)/src:/src container-name がdocker composeでいうvolumesと同等
  - volumeがなくても↑は自動的に生成する
  - 絶対パス指定しか使えない

- git submoduleを削除したい
  - <https://stackoverflow.com/questions/1260748/how-do-i-remove-a-submodule>

- Dockerfileの書き方
  - [ベストプラクティス](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/)
  - [注意点](https://qiita.com/c18t/items/f3a911ef01f124071c95)

- apt-get updateの意味
  - <http://karoten512.hatenablog.com/entry/2018/01/09/003330>

## 残課題

- [ ] apt-get -y install ... の部分を&で連結したい
  - インストールするコマンドの一覧を入力、テスト用に個別にRUN ... or 本番用にRUN aa && bb ..を出力とするスクリプトを書く
- [ ] git cloneの部分も↑と同様にしたい
  - cloneするURLの一覧を入力、出力はgit cloneコマンド（.zsh/配下に同名のディレクトリを作ればOK)
- [ ] 一応rootではなくユーザを作成してそれを実行時に使う
- [ ] README書く
- [ ] apt-get updateの高速化
  - <https://stackoverflow.com/questions/56139706/speeding-up-apt-get-update-to-speed-up-docker-image-builds>

## 参考

- <https://docs.docker.com/engine/reference/builder/#volume>
