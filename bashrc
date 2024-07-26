# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bash.bashrc ]; then
	. /etc/bash.bashrc
fi

# set line beginning
PS1="[\u@\h|\W]:"

# do some coloring in the terminal
alias grep='grep --color=yes'
alias less='less -R'

# aliases
alias 1172='xfreerdp /v:anaklin18.ana.unibe.ch /u:haberthu /p:$IMAPPASS /size:1740x1080 /smart-sizing:3480x2160'
alias 1272='xfreerdp /v:anamic02.ana.unibe.ch /u:haberthu /p:$IMAPPASS /size:1740x1080 /smart-sizing:3480x2160'
alias 2214='xfreerdp /v:anamic05.ana.unibe.ch /u:SkyScan4 /p:SkyScan2214 /size:1740x1080 /smart-sizing:3480x2160'
alias anaklin03='xfreerdp /v:anaklin03.ana.unibe.ch /u:haberthu /p:$IMAPPASS /size:1740x1080 /smart-sizing:3480x2160'
alias anaklin04='xfreerdp /v:anaklin04.ana.unibe.ch /u:haberthu /p:$IMAPPASS /size:1740x1080 /smart-sizing:3480x2160'
alias monster='xfreerdp /v:anamyct03.ana.unibe.ch /u:haberthu /p:$IMAPPASS /size:1740x1080 /smart-sizing:3480x2160'
alias somafm='mplayer -quiet -vc null -vo null -playlist http://somafm.com/groovesalad.pls'
alias goa='mplayer -quiet -vc null -vo null -playlist http://somafm.com/suburbsofgoa.pls'
alias deep='mplayer -quiet -vc null -vo null -volume 128 -playlist https://somafm.com/beatblender.pls'
alias m='cd && mutt && cd -'
alias instaload='yt-dlp https://www.instapaper.com/rss/821883/5Syx27oaNKCCSCENuj71zTAE -i -w'
alias fiji='~/Downloads/Fiji.app/ImageJ-linux64'

# path
PATH=$HOME:$PATH
export PATH

# https://tex.stackexchange.com/a/95373/828
export PATH=/usr/local/texlive/2022/bin/x86_64-linux:$PATH    
export INFOPATH=$INFOPATH:/usr/local/texlive/2022/texmf-dist/doc/info
export MANPATH=$MANPATH:/usr/local/texlive/2022/texmf-dist/doc/man

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
