HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=30000000
setopt appendhistory nomatch
unsetopt notify
bindkey -e
COMPLETION_WAITING_DOTS="true"

# The following lines were added by compinstall
zstyle :compinstall filename '/home/tony/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# oh-my-zsh setup
export ZSH=/usr/share/oh-my-zsh
ZSH_THEME="half-life"
#plugins=(git)
source $ZSH/oh-my-zsh.sh

RPROMPT="[%D{%l:%M:%S%p}]"

# env variables
# editor
export EDITOR='vim'
export VISUAL='vim'

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

# other aliases
alias rtfm=man
alias please=sudo
alias no='yes n'
alias mountusb='sudo mount /dev/sdb1 /mnt/usb'
alias umountusb='sudo umount /mnt/usb'
alias mountwin='sudo mount /dev/sda4 /mnt/win'
alias mountsd='sudo mount /dev/mmcblk0p1 /mnt/sd'
alias umountsd='sudo umount /mnt/sd'
