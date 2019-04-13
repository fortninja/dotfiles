HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=30000000
setopt appendhistory nomatch
unsetopt notify
bindkey -e
COMPLETION_WAITING_DOTS="true"

# oh-my-zsh setup
export ZSH=/usr/share/oh-my-zsh
ZSH_THEME="half-life"
#plugins=(git)
source $ZSH/oh-my-zsh.sh

RPROMPT="[%D{%l:%M:%S%p}]"

# env variables
export EDITOR='vim'
export VISUAL='vim'

# general aliases
alias rtfm=man
alias please=sudo
alias no='yes n'
alias mountusb='sudo mount /dev/sdb1 /mnt/usb'
alias umountusb='sudo umount /mnt/usb'
alias mountsd='sudo mount /dev/mmcblk0p1 /mnt/sd'
alias umountsd='sudo umount /mnt/sd'
# git aliases
alias g=git
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gcm='git commit -m'
alias gca='gc -a'
alias gd='git diff'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias go='git checkout'
alias gcb='git checkout -b'
alias gcB='git checkout -B'
alias gm='git merge'
alias gp='git push'
alias gpf='git push --force'
alias gpu='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias gu='git pull'
alias gr='git rebase'
alias grm='git rebase origin/master'
alias gf='git fetch'

# The following lines were added by compinstall

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' format 'completing %d'
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**'
zstyle ':completion:*' menu select=5
zstyle ':completion:*' original true
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl true
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/anna/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
