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
alias tw='/scratch/Apps/texworks/texworks &'
alias winterm1='rm ~/.freerdp/known_hosts;xfreerdp -u haberthuer -d  psich --plugin cliprdr -x lan Winterm1'
alias sublime='/scratch/Apps/Sublime\ Text\ 2/sublime_text &'
alias rstudio='/scratch/Apps/rstudio-0.97.551/bin/rstudio &'

# Path
PATH=/scratch/Apps/texlive/2012/bin/i386-linux:$PATH
PATH=$HOME:$PATH
PATH=$HOME/bin:$PATH
PATH=/afs/psi.ch/project/sls/X02DA/Software/bin_i386/:$PATH
PATH=/usr/local/bin:$PATH
PATH=/usr/bin:$PATH
PATH=/bin:$PATH
PATH=/usr/local/sbin:$PATH
PATH=/usr/sbin:$PATH
PATH=/sbin:$PATH
PATH=$HOME/.cabal/bin:$PATH
PATH=/opt/python3/bin/:$PATH
PATH=/opt/python3/lib:$PATH
PATH=/usr/lib:$PATH
export PATH
