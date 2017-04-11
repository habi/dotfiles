# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bash.bashrc ]; then
	. /etc/bash.bashrc
fi

# set line beginning
PS1="[\u@\h|\W]:"

# do some coloring in the terminal
eval `dircolors`
alias ls='ls --color=yes'
alias grep='grep --color=yes'
alias less='less -R'

# aliases
alias 1272='xfreerdp /v:anamic02.unibe.ch /u:haberthu /multimon'
alias 1172='xfreerdp /v:anaklin18.unibe.ch /u:haberthu /multimon'
alias somafm='mplayer -really-quiet -vo none -playlist http://somafm.com/groovesalad.pls'
alias m='cd && mutt & cd -'
alias instaload='youtube-dl https://www.instapaper.com/rss/821883/5Syx27oaNKCCSCENuj71zTAE -i -w'i

# path
PATH=$HOME:$PATH
export PATH
