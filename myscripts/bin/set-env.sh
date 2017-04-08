export JAVA_HOME=/home/salman/program_files/jdk
export PATH=$PATH:/home/salman/program_files/jdk/bin

export M2_HOME=/home/salman/program_files/maven
export PATH=$PATH:/home/salman/program_files/maven/bin

export PATH=$PATH:/home/salman/program_files

export SMARTGIT_JAVA_HOME=$JAVA_HOME

export PATH=$PATH:/home/salman/program_files/glark-1.7.10/bin

export PATH=$PATH:/home/salman/program_files/protobuf/src
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/salman/program_files/protobuf/src/.libs

export LIBNDBPATH=/home/salman/program_files/clusterj
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/salman/program_files/clusterj/

export PATH=$PATH://home/salman/program_files/set-pic-time

export PATH=$PATH://home/salman/Dropbox/programs/

export PATH=$PATH://home/salman/program_files/idea/bin

export PATH=$PATH:/home/salman/program_files/scala/bin

export PATH=$PATH:/home/salman/program_files/sbt/bin

export PATH=$PATH:/home/salman/program_files/latexdiff

export PATH=$PATH:/usr/local/texlive/2016/bin/x86_64-linux

alias cd1="cd .."
alias cd2="cd ../.."
alias cd3="cd ../../.."
alias cd4="cd ../../../.."
alias cd5="cd ../../../../.."
alias cd6="cd ../../../../../.."
alias cd7="cd ../../../../../../.."
alias cd8="cd ../../../../../../../.."
alias cd9="cd ../../../../../../../../.."

alias open="xdg-open"

alias hp="cd /home/salman/code/hopg/hops-papers/hopsfs/"

#set -o vi
alias vim=vimx

alias grep="grep --color=auto"

alias sf="cd /home/salman/code/hopg/hops-papers/hopsfs/hopsfs-small-files/draft"

#~/Dropbox/programs/mouse-fix.sh

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

