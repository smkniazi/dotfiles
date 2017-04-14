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

alias hp="cd ~/code/hopg/hops-papers/hopsfs/"
alias h="cd ~/code/hopg/hops"
alias hm="cd ~/code/hopg/hops-metadata-dal"
alias hmi="cd ~/code/hopg/hops-metadata-dal-impl-ndb"
alias hb="cd ~/code/hopg/hammer-bench"
alias ds="cd ~/code/hopg/HopsFS-Deployment-Scripts"
alias sf="cd ~/code/hopg/hops-papers/hopsfs/hopsfs-small-files/draft"
alias d="cd ~/code/dotfiles"


# VIM
hash vimx
if [ "$?" -eq "0" ]; then
	alias vim=vimx
else
	echo "You might want to install vimx for clipboard support"
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
