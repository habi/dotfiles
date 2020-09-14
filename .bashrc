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
alias 1272='xfreerdp /v:anamic02.ana.unibe.ch /u:haberthu /w:1600 /h:1150'
alias 1172='xfreerdp /v:anaklin18.ana.unibe.ch /u:haberthu /w:1600 /h:1150'
alias anaklin03='xfreerdp /v:anaklin03.ana.unibe.ch /u:haberthu /w:1600 /h:1150'
alias anaklin04='xfreerdp /v:anaklin04.ana.unibe.ch /u:haberthu /w:1600 /h:1150'
alias prism='xfreerdp /v:anasoft.ana.unibe.ch /u:haberthu /w:1600 /h:1150'
alias vsphere='xfreerdp /v:units.unibe.ch /u:haberthu'
alias somafm='mplayer -really-quiet -vo none -volume 128 -playlist http://somafm.com/groovesalad.pls'
alias goa='mplayer -really-quiet -vo none -volume 128 -playlist http://somafm.com/suburbsofgoa.pls'
alias m='cd && mutt && cd -'
alias instaload='youtube-dl https://www.instapaper.com/rss/821883/5Syx27oaNKCCSCENuj71zTAE -i -w'i
alias fiji='~/Downloads/Fiji.app/ImageJ-linux64'
alias pycharm='/scratch/pycharm-community-2016.2.3/bin/pycharm.sh'

# path
PATH=$HOME:$PATH
export PATH

# https://tex.stackexchange.com/a/95373/828
export PATH="/usr/local/texlive/2017/bin/x86_64-linux:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/habi/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/habi/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/habi/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/habi/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

