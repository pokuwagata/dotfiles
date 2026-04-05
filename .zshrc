autoload -Uz compinit && compinit
eval "$(sheldon source)"

# fzf
source <(fzf --zsh)

cd_ghq() {
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

zle -N cd_ghq

# zvm
ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT

function zvm_after_lazy_keybindings() {
  zvm_bindkey vicmd '^g' cd_ghq
}

# Keybindings
bindkey -M viins '^[[91;5u' vi-cmd-mode

# Alias
alias vz='vim ~/.zshrc'
alias vze='vim ~/.zshenv'
alias vt='vim ~/.tmux.conf'
alias sz='source ~/.zshrc'
alias st='tmux source-file ~/.tmux.conf'
alias dco="docker compose"
alias -g B='$(git branch -a | fzf)'
alias emulator='~/Library/Android/sdk/emulator/emulator'
alias android5='emulator -avd Small_Phone_API_21'
alias cc='claude'
alias -g F='$(fzf-file-widget)'
alias gpv='gh pr view --web'

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

# pnpm
export PNPM_HOME="/Users/nakahata/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
eval "$(direnv hook zsh)"
export PATH="$HOME/.local/bin:$PATH"
