# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=50000
SAVEHIST=50000
setopt appendhistory autocd extendedglob nomatch
setopt nohup nocheckjobs
unsetopt beep notify
bindkey -v
zstyle :compinstall filename '/home/b2coutts/.zshrc'
autoload -Uz compinit
compinit

# mapping for vi-mode ESC
bindkey -M viins 'kj' vi-cmd-mode
bindkey -M viins 'jk' vi-cmd-mode

# custom shell prompt
autoload -U colors && colors
PROMPT="%{$fg[green]%}%~$ %{$reset_color%}"

# environment variables
PATH=$HOME/.bin:$PATH
if [ "$TERM" = "rxvt-unicode-256color" ]; then export TERM=rxvt-unicode; fi
if [ "$TERM" = "screen" ]; then export TERM=screen-256color; fi
export CSC="csclub.uwaterloo.ca"
export SVN="https://girffe.net/svn"
export GIT="https://github.com/b2coutts"
export EDITOR=/usr/bin/vim

# aliases
alias ls='ls --color=auto'
alias rxvt='rxvt -fg white -bg black -fn asdf'
alias urxvt='urxvt -fg white -bg black +sb -fn asdf'
alias shalt='sudo shutdown -h now'
alias sizes='du -sch * | sort -h'

# functions
function mco {
    if [ "$#" -lt 1 ]; then echo "Usage: $0 reponame"
    else svn checkout $SVN/$1
    fi
}

# machine/account-specific .zshrc
if [ -f $HOME/.zshspecific ]; then source $HOME/.zshspecific; fi
