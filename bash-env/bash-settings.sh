#Using this, consecutive duplicate commands, invocations of ls, plus calls to the bg, fg and exit built-ins will not be appended to the history list. 
#export HISTIGNORE="&:ls:ls *:[bf]g:exit" 
#bind 'set show-all-if-ambiguous on'
#bind 'TAB:menu-complete'

#disable ctrl+s which freezes the terminal
#stty -ixon

#Bash Prompt
#0;47;32m light gray background and green foreground
export PS1="\[\033[32m\][\u@\h \[\033[32m\]\W\[\033[33m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/')\[\033[32m\]]$\[\033[00m\] "

