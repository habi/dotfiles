# .bashrc

# Source global definitions
if [ -f /etc/bash.bashrc ]; then
	. /etc/bash.bashrc
fi

# set line beginning
PS1="[\u@\h|\W]:"

# aliases
alias 1172='xfreerdp /v:anaklin18.ana.unibe.ch /u:haberthu /p:$IMAPPASS /size:1740x1080 /smart-sizing:3480x2160'
alias 1272='xfreerdp /v:anamic02.ana.unibe.ch /u:haberthu /p:$IMAPPASS /size:1740x1080 /smart-sizing:3480x2160'
alias 2214='xfreerdp /v:anamic05.ana.unibe.ch /u:SkyScan4 /p:SkyScan2214 /size:1740x1080 /smart-sizing:3480x2160'
alias anaklin03='xfreerdp /v:anaklin03.ana.unibe.ch /u:haberthu /p:$IMAPPASS /size:1740x1080 /smart-sizing:3480x2160'
alias anaklin04='xfreerdp /v:anaklin04.ana.unibe.ch /u:haberthu /p:$IMAPPASS /size:1740x1080 /smart-sizing:3480x2160'
alias monster='xfreerdp /v:anamyct03.ana.unibe.ch /u:haberthu /p:$IMAPPASS /size:1740x1080 /smart-sizing:3480x2160'
alias m='cd && mutt && cd -'
alias instaload='yt-dlp https://www.instapaper.com/rss/821883/5Syx27oaNKCCSCENuj71zTAE -i -w'
alias fiji='~/Downloads/Fiji.app/ImageJ-linux64'
alias josm='export GDK_SCALE=2 && josm'
alias groove='~/Dev/somafm-cli/src/somafm listen groovesalad'
alias goa='~/Dev/somafm-cli/src/somafm listen suburbsofgoa'
alias reggae='~/Dev/somafm-cli/src/somafm listen reggae'
alias synphaera='~/Dev/somafm-cli/src/somafm listen synphaera'
alias grep='grep --color=auto'

# path
PATH=$HOME:$PATH
export PATH=$HOME/.local/bin:$PATH
PATH=/usr/local/texlive/2024/bin/x86_64-linux:$PATH
PATH=/home/habi/.cargo/bin:$PATH
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
export PATH=/usr/local/cuda-12.6/bin${PATH:+:${PATH}}

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

# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

eval "$(starship init bash)"
. "$HOME/.cargo/env"
