# go-update-note

`sudo rm -vrf /usr/local/go`

`sudo rm /etc/paths.d/go`

```
la /usr/local/bin/go
lrwxr-xr-x 1 nakahata admin 26  4 19  2019 /usr/local/bin/go -> ../Cellar/go/1.12.4/bin/go
```

brew install で入れている？

`brew uninstall go`

```
go version
zsh: command not found: go
```

```
curl https://dl.google.com/go/go1.14.2.darwin-amd64.tar.gz -o go1.14.2.darwin-amd64.tar.gz
tar -C /usr/local -xz go1.14.2.darwin-amd64.tar.gz
```

↑がうまくいかなかったので brew install でやった。こっちでも良さそう