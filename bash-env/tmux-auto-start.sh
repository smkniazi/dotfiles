#start tmux when ever a shell is started
#if [ -z ${TMUX} ]; then
#    echo "Starting a Tmux session"
#    tmux
#else
#	echo "Tmux is already running"
#fi
if [ -z "$SSH_CLIENT" ] && [ -z "$SSH_TTY" ]; then
	if [ -z ${TMUX} ]; then
		#echo "Starting a Tmux session"
		tmux attach || tmux new
	#else
	#	echo "Tmux is already running"
	fi
fi

