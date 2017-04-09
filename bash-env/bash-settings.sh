#Using this, consecutive duplicate commands, invocations of ls, plus calls to the bg, fg and exit built-ins will not be appended to the history list. 
export HISTIGNORE="&:ls:ls *:[bf]g:exit" 

