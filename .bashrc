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
alias 1272='xfreerdp /v:anamic02.unibe.ch /u:haberthu /w:1600 /h:1150'
alias 1172='xfreerdp /v:anaklin18.unibe.ch /u:haberthu /w:1600 /h:1150'
alias prism='xfreerdp /v:anasoft.unibe.ch /u:haberthu /w:1600 /h:1150'
alias somafm='mplayer -really-quiet -vo none -volume 128 -playlist http://somafm.com/groovesalad.pls'
alias goa='mplayer -really-quiet -vo none -volume 128 -playlist http://somafm.com/suburbsofgoa.pls'
alias m='cd && mutt && cd -'
alias instaload='youtube-dl https://www.instapaper.com/rss/821883/5Syx27oaNKCCSCENuj71zTAE -i -w'i
alias fiji='/scratch/Fiji.app/ImageJ-linux64'
alias pycharm='/scratch/pycharm-community-2016.2.3/bin/pycharm.sh'

# path
PATH=$HOME:$PATH
export PATH

# added by Miniconda3 4.0.5 installer
export PATH="/home/habi/miniconda3/bin:$PATH"
