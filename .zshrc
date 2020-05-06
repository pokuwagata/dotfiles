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

MANPATH=/usr/local/opt/coreutils/libexec/gnuman:${MANPATH}


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
