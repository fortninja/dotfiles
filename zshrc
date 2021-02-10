HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=30000
setopt appendhistory nomatch
unsetopt notify
bindkey -e
COMPLETION_WAITING_DOTS="true"

# oh-my-zsh setup
export ZSH=/usr/share/oh-my-zsh
ZSH_THEME="half-life"
#plugins=(git)
source $ZSH/oh-my-zsh.sh

# autoload -U colors && colors
# setopt PROMPT_SUBST

RPROMPT=$'%(?..%{$fg[red]%}%?%{$reset_color%}) [%D{%l:%M:%S%p}]'
# indicate hostname if in an SSH session
if [[ -n $SSH_CONNECTION ]]; then
    PROMPT="%{$fg_bold[yellow]%}(%m) $PROMPT"
fi


# env variables
export EDITOR='vim'
export VISUAL='vim'
export XAUTHORITY=$HOME/.Xauthority

export PATH=~/llvm-project/build/bin:$PATH

# inefficient, recursive count of files in a directory (default .)
contents() {
    find "`[ -n \"$1\" ] && echo \"$1\" || echo \".\"`" -type f | wc -l
}

# random convenient aliases
alias py=python
alias ytdlx='youtube-dl -x --audio-quality 0 --audio-format vorbis'
alias venv='source virtualenv/bin/activate'
alias gdb='gdb -q'
# system command aliases
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
alias gca='git commit --amend'
alias gcan='git commit --amend --no-edit'
alias gcm='git commit -m'
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
alias grom='git rebase origin/master'
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
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
