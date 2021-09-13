# tmux
if [ $SHLVL = 1 ]; then
    tmux
fi

autoload -Uz compinit && compinit

# Plugins
source ~/.zplug/init.zsh
zplug "b4b4r07/enhancd", use:init.sh
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "mollifier/anyframe"
zplug "greymd/docker-zsh-completion"
zplug "x-motemen/ghq", as:command, from:gh-r
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search", defer:3
# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load --verbose

# Keybindings
bindkey -e
if zplug check "zsh-users/zsh-history-substring-search"; then
    bindkey '^P' history-substring-search-up
    bindkey '^N' history-substring-search-down
fi
bindkey '^r' anyframe-widget-execute-history
bindkey '^rp' anyframe-widget-put-history
bindkey '^g' anyframe-widget-cd-ghq-repository
bindkey '^xf' anyframe-widget-insert-filename

fco() {
  local tags branches target
  branches=$(
  git --no-pager branch --all \
    --format="%(if)%(HEAD)%(then)%(else)%(if:equals=HEAD)%(refname:strip=3)%(then)%(else)%1B[0;34;1mbranch%09%1B[m%(refname:short)%(end)%(end)" \
    | sed '/^$/d') || return
      tags=$(
      git --no-pager tag | awk '{print "\x1b[35;1mtag\x1b[m\t" $1}') || return
      target=$(
      (echo "$branches"; echo "$tags") |
        fzf --no-hscroll --no-multi -n 2 \
        --ansi) || return
              git checkout $(awk '{print $2}' <<<"$target" )
            }
zle -N fco

# Select a docker container to remove
function drm() {
  local cid
  cid=$(docker ps -a | sed 1d | fzf -q "$1" | awk '{print $1}')

  [ -n "$cid" ] && docker rm "$cid"
}

# Install (one or multiple) selected application(s)
# using "brew search" as source input
# mnemonic [B]rew [I]nstall [P]lugin
bip() {
  local inst=$(brew search | fzf -m)

  if [[ $inst ]]; then
    for prog in $(echo $inst);
    do; brew install $prog; done;
  fi
}
# Update (one or multiple) selected application(s)
# mnemonic [B]rew [U]pdate [P]lugin
bup() {
  local upd=$(brew leaves | fzf -m)

  if [[ $upd ]]; then
    for prog in $(echo $upd);
    do; brew upgrade $prog; done;
  fi
}
# tm - create new tmux session, or switch to existing one. Works from within tmux too. (@bag-man)
# `tm` will allow you to select your tmux session via fzf.
# `tm irc` will attach to the irc session (if it exists), else it will create it.

tm() {
  [[ -n "$TMUX" ]] && change="switch-client" || change="attach-session"
  if [ $1 ]; then
    tmux $change -t "$1" 2>/dev/null || (tmux new-session -d -s $1 && tmux $change -t "$1"); return
  fi
  session=$(tmux list-sessions -F "#{session_name}" 2>/dev/null | fzf --exit-0) &&  tmux $change -t "$session" || echo "No sessions found."
}

# zsh; needs setopt re_match_pcre. You can, of course, adapt it to your own shell easily.
tmk () {
  local sessions
  sessions="$(tmux ls|fzf --exit-0 --multi)"  || return $?
  local i
  for i in "${(f@)sessions}"
  do
    [[ $i =~ '([^:]*):.*' ]] && {
      echo "Killing $match[1]"
          tmux kill-session -t "$match[1]"
        }
    done
  }

# Alias
alias vz='vim ~/.zshrc'
alias vze='vim ~/.zshenv'
alias vt='vim ~/.tmux.conf'
alias sz='source ~/.zshrc'
alias st='tmux source-file ~/.tmux.conf'
alias aw=anyframe-widget-select-widget
alias l='ls -ltr --color=auto'
alias la='ls -la --color=auto'
alias ctags="`brew --prefix`/bin/ctags"
alias dco="docker-compose"
alias -g B='$(git branch -a | fzf)'

# History
export LANG=ja_JP.UTF-8
HISTFILE=$HOME/.zsh-history
HISTSIZE=1000000
SAVEHIST=1000000
setopt share_history

# Others
setopt auto_cd
zstyle ':completion:*:default' menu select=2
function chpwd() {
    emulate -L zsh
    ls --color=auto
}

# override /etc/paths
PATH=/usr/local/opt/coreutils/libexec/gnubin:${PATH}
PATH=/Users/nakahata/.nodebrew/current/bin:${PATH}
PATH=/usr/local/go/bin:${PATH}


MANPATH=/usr/local/opt/coreutils/libexec/gnuman:${MANPATH}

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


