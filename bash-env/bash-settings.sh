#Using this, consecutive duplicate commands, invocations of ls, plus calls to the bg, fg and exit built-ins will not be appended to the history list. 
#export HISTIGNORE="&:ls:ls *:[bf]g:exit" 
#bind 'set show-all-if-ambiguous on'
#bind 'TAB:menu-complete'

#disable ctrl+s which freezes the terminal
#stty -ixon

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
