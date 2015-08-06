# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# set first few characters
PS1="[\u@\h|\W]:"

# do some coloring in the terminal
eval `dircolors`
alias ls='ls --color=yes'
alias grep='grep --color=yes'
alias less='less -R'

# Aliases
alias idl_tomcat='/work/sls/lib/X_TOMO_IDLTOOLS/settings/tomcat_start &'
alias matlab='module add matlab;matlab'
alias winterm1='xfreerdp -u haberthuer -d  psich --plugin cliprdr -x lan -g 1600x1100 winterm1.psi.ch'
alias somafm='mplayer -really-quiet -vo none http://somafm.com/groovesalad.pls'
alias pycharm='/scratch/pycharm-community-4.5.1/bin/pycharm.sh &'
# Path
PATH=$HOME:$PATH
PATH=$HOME/.cabal/bin:$PATH
PATH=$HOME/bin:$PATH
PATH=/afs/psi.ch/project/sls/X02DA/Software/bin_i386/:$PATH
export PATH
