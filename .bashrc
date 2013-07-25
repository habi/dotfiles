# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# do some coloring in the terminal
eval `dircolors`
alias ls='ls --color=yes'
alias grep='grep --color=yes'
alias less='less -R'

# Aliases
alias fiji='/scratch/Apps/Fiji.app/fiji-linux &'
alias filezilla='/scratch/Apps/FileZilla3/bin/filezilla &'
alias idl_tomcat='/work/sls/lib/X_TOMO_IDLTOOLS/settings/tomcat_start &'
alias matlab='module add matlab;matlab'
alias mendeley='/scratch/Apps/Mendeley/bin/mendeleydesktop &'
alias sage='/scratch/Apps/sage-5.0/sage -notebook'
alias tw='/scratch/Apps/texworks/texworks &'
alias winterm1='rm ~/.freerdp/known_hosts;xfreerdp -u haberthuer -d  psich --plugin cliprdr -g 1280x970 -x lan Winterm1'
alias sublime='/scratch/Apps/Sublime\ Text\ 2/sublime_text &'
export TODOTXT_DEFAULT_ACTION=ls
alias t='todo.sh -d ~/todotodo.cfg'
alias p='python ~/todo/Punch.py'

# Path
PATH=/scratch/Apps/texlive/2012/bin/i386-linux:$PATH:$HOME:$HOME/bin:/afs/psi.ch/project/sls/X02DA/Software/bin_i386/:/afs/psi.ch/user/h/haberthuer/bin:/afs/psi.ch/user/h/haberthuer:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:$HOME/.cabal/bin:$HOME/todo
export PATH
