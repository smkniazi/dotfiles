#Using this, consecutive duplicate commands, invocations of ls, plus calls to the bg, fg and exit built-ins will not be appended to the history list. 
#export HISTIGNORE="&:ls:ls *:[bf]g:exit" 
#bind 'set show-all-if-ambiguous on'
#bind 'TAB:menu-complete'

#disable ctrl+s which freezes the terminal
#stty -ixon

#Bash Prompt
#0;47;32m light gray background and green foreground
export PS1="\[\033[32m\][\u@\h \[\033[32m\]\W\[\033[33m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/')\[\033[32m\]]$\[\033[00m\] "


#combine history across multiple sessions
#http://experimentswithlinuxrelatedtech.blogspot.se/2014/07/combine-bash-history-across-multiple.html
export HISTFILE=~/.bash_history
export HISTFILESIZE=500000
export HISTSIZE=10000
export HISTCONTROL=ignoredups:erasedups
shopt -s histappend
unset PROMPT_COMMAND
export PROMPT_COMMAND="history -n;history -w;history -c;history -r;$PROMPT_COMMAND"


# Change font when on a TTY
if [ $TERM = linux ]; then
    setfont /usr/lib/kbd/consolefonts/latarcyrheb-sun32.psfu.gz
fi
