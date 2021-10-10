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

PS1='[%n@%m]%~$ '

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh_fzf

