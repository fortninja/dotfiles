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

source /usr/share/zsh/scripts/antigen/antigen.zsh
antigen use oh-my-zsh
antigen theme half-life
antigen apply

# begin env variables

# editor
export EDITOR='vim'
export VISUAL='vim'

# Android SDK
export ANDROID_HOME=/opt/android-sdk

# postgres user
export PGUSER="fortninja"

# end env variables

# git aliases
alias g=git
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gcm='git commit -m'
alias gca='gc -a'
alias gd='git diff'
alias gl='git log'
alias go='git checkout'
alias gcb='git checkout -b'
alias gcB='git checkout -B'
alias gm='git merge'
alias gp='git push'
alias gpf='git push --force'
alias gpu='git push -u'
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
