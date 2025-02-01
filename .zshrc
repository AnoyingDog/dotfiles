HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/leon/.zshrc'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'

eval "$(starship init zsh)"

autoload -Uz compinit
compinit
# End of lines added by compinstall
