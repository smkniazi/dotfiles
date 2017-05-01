create_path_alias(){
	if [ -d "$2" ]; then
		eval "alias $1=\"cd $2\""
	fi
}

create_path_alias	 hp		 ~/code/hops/hops-papers/hopsfs/
create_path_alias	 h		 ~/code/hops/hops
create_path_alias	 hm		 ~/code/hops/hops-metadata-dal
create_path_alias	 hmi	 ~/code/hops/hops-metadata-dal-impl-ndb
create_path_alias	 hb		 ~/code/hops/hammer-bench
create_path_alias	 ds		 ~/code/hops/HopsFS-Deployment-Scripts
create_path_alias	 sf		 ~/code/hops/hops-papers/hopsfs/hopsfs-small-files/draft
create_path_alias	 d		 ~/code/dotfiles


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

alias gb="git branch"
alias gd="git diff"
alias gl="git log"
alias gs="git status"
alias gp="git pull"

alias f="find . -iname "
function fo(){
	file=$1
	find . -iname "$1" -exec vimx {} \;
}


# VIM
hash vimx 2> /dev/null
if [ "$?" -eq "0" ]; then
	alias vim=vimx
	alias vi=vimx
#else
#	echo "You might want to install vimx for clipboard support"
fi

alias grep="grep --color=auto"

# Listing
alias ls="ls -F --color=auto"
alias ll="ls -Fl --color=auto"
alias lt="ls -Faltr --color=auto"

#TMUX
alias tmux="tmux -2"
alias t="tmux -2"
ta (){
	tmux a -dt $@
}
