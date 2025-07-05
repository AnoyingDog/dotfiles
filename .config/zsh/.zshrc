#History
HISTFILE=~/.cache/zsh/history
HISTSIZE=1000
SAVEHIST=1000

#Autocomplete
autoload -U compinit; compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots) #include dotfiles

#Vim keys
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

#Vi mode
bindkey -v
export KEYTIMEOUT=1
  #Fix backspace issue
  bindkey -v '^?' backward-delete-char
#Yazi shortcut ctrl+o
function customyazi() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
bindkey -s '^E' 'customyazi\n'
alias yazi='customyazi'
#Edit line in vi CTRL+x
  #autoload edit-command-line; zle -N edit-command-line
  #bindkey '^E' edit-command-line
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/leon/.zshrc'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
alias tmux="tmux -f ~/.config/tmux/tmux.conf"
alias svim="sudoedit"


eval "$(starship init zsh)"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

export PATH=$PATH:~/.cargo/bin

export EDITOR="nvim"

autoload -Uz compinit

#cat ~/tmp.md
#neofetch
