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
alias winterm1='rm ~/.freerdp/known_hosts;xfreerdp -u haberthuer -d  psich --plugin cliprdr -x lan Winterm1'
alias somafm='read -p "Which station? "; mplayer -really-quiet -vo none -ao sdl http://somafm.com/startstream=${REPLY}.pls'

# Path
PATH=$HOME:$PATH
PATH=$HOME/bin:$PATH
PATH=/afs/psi.ch/project/sls/X02DA/Software/bin_i386/:$PATH
export PATH
