autoload -Uz compinit && compinit

# Plugins
source ~/.zplug/init.zsh
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

# zplug "b4b4r07/enhancd", use:init.sh

zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

zplug "jeffreytse/zsh-vi-mode"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load --verbose

# fzf
source <(fzf --zsh)

fg() {
  dir=$(ghq list --full-path | fzf --tac --height 40%)
  if [[ -z "$dir" ]]; then
    zle redisplay
    return 0
  fi
  zle push-line
  BUFFER="builtin cd -- $dir"
  zle accept-line
  local ret=$?
  unset dir
  zle reset-prompt
  return $ret
}

zle -N fg

# zvm
zvm_bindkey vicmd '^g' fg

# Keybindings
bindkey -e

bindkey '^g' fg

# Alias
alias vz='vim ~/.zshrc'
alias vze='vim ~/.zshenv'
alias vt='vim ~/.tmux.conf'
alias sz='source ~/.zshrc'
alias st='tmux source-file ~/.tmux.conf'
alias l='ls -ltr --color=auto'
alias la='ls -la --color=auto'
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
ENHANCD_FILTER="fzf --height 40% --layout reverse"

# override /etc/paths
PATH=/usr/local/opt/coreutils/libexec/gnubin:${PATH}
PATH=/Users/nakahata/.nodebrew/current/bin:${PATH}
PATH=/usr/local/go/bin:${PATH}
MANPATH=/usr/local/opt/coreutils/libexec/gnuman:${MANPATH}

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

clear