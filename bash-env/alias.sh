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


bh (){
	mvn -T 1C $@ install -Dmaven.test.skip=true -f ~/code/hops/hops-gpu-management/pom.xml

	mvn -T 1C $@ install -Dmaven.test.skip=true -f ~/code/hops/hops-gpu-management-impl-nvidia/pom.xml

	mvn -T 1C $@ install -Dmaven.test.skip=true -f ~/code/hops/hops-metadata-dal/pom.xml

	mvn -T 1C $@ install -Dmaven.test.skip=true -f ~/code/hops/hops-metadata-dal-impl-ndb/pom.xml

	mvn -T 1C $@ install -Dmaven.test.skip=true generate-sources -f ~/code/hops/hops/pom.xml

	#temporarily change pwd
	cd ~/code/hops/hops && mvn -T 1C $@ test-compile
}

mi () {
	mvn $@ install -Dmaven.test.skip=true 
}

mig () {
	mvn $@ install -Dmaven.test.skip=true generate-sources -Pndb
}

ph () {
	cd /home/salman/code/hops/hops && git push && cd /home/salman/code/hops/hops-metadata-dal && git push && cd /home/salman/code/hops/hops-metadata-dal-impl-ndb && git push
}


gcp() {
	if [ "$#" -eq 1 ]; then
		git commit -am "$1" && git push
	else
		joke=""
		#joke="$(wget 'http://api.icndb.com/jokes/random' -qO- | grep -Po '"joke":.*?[^\\]",' |  sed -e 's/\"//g' | sed -e 's/joke: //g' | sed -e 's/\"//g')"

		joke="Auto generated commit msg.  $joke"
		git commit -am "$joke" && git push
	fi
}

s2 () {
#ssh -A -t nzo@cloud1.sics.se ssh -A -t salman@salman2.sics.se
	ssh salman@salman2.sics.se
}

ice () {
	ssh -p 8209 hdp@ice $@
}

c1 () { 
	ssh nzo@cloud1.sics.se
}

mtc () {
	mvn test-compile
}
