# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.bash_history
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install

# PS1='[%n@%m]%~$ '
eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh.json)"

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char


source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh_fzf

export PATH=$PATH:$HOME/Applications/nim-1.6.0/bin:~/.nimble/bin:~/go/bin

alias vim="nvim"

export EDITOR=nvim

