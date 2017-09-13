alias grey-grep="GREP_COLOR='1;30'    grep --color=always --line-buffered"
alias red-grep="GREP_COLOR='1;31'     grep --color=always --line-buffered"
alias green-grep="GREP_COLOR='1;32'   grep --color=always --line-buffered"
alias yellow-grep="GREP_COLOR='1;33'  grep --color=always --line-buffered"
alias blue-grep="GREP_COLOR='1;34'    grep --color=always --line-buffered"
alias magenta-grep="GREP_COLOR='1;35' grep --color=always --line-buffered"
alias cyan-grep="GREP_COLOR='1;36'    grep --color=always --line-buffered"
alias white-grep="GREP_COLOR='1;37'   grep --color=always --line-buffered"

echoColor() {
	Black='\033[0;30m'        # Black
	Red='\033[0;31m'          # Red
	Green='\033[0;32m'        # Green
	Yellow='\033[0;33m'       # Yellow
	Blue='\033[0;34m'         # Blue
	Purple='\033[0;35m'       # Purple
	Cyan='\033[0;36m'         # Cyan
	White='\033[0;37m'        # White
	NC='\033[0m' # No Color
	printf "${Cyan}$1${NC}\n"
}

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


# VIM
hash vimx 2> /dev/null
if [ "$?" -eq "0" ]; then
	alias vim=vimx
	alias vi=vimx
#else
#	echo "You might want to install vimx for clipboard support"
fi

alias f="find . -iname "
function fo(){
	vim $(fzf)
}

alias grep="grep --color=auto"

# Listing
alias ls="ls -h -F --color=auto"
alias ll="ls -hFl --color=auto"
alias lt="ls -Fhaltr --color=auto"

#TMUX
alias tmux="tmux -2"
alias t="tmux -2"
ta (){
	tmux a -dt $@
}


gc() {
	if [ "$#" -eq 1 ]; then
		git commit -am "$1" && git push
	else
		joke=""
		#joke="$(wget 'http://api.icndb.com/jokes/random' -qO- | grep -Po '"joke":.*?[^\\]",' |  sed -e 's/\"//g' | sed -e 's/joke: //g' | sed -e 's/\"//g')"

		joke="Auto generated commit msg.  $joke"
		git commit -am "$joke" 
	fi
}

gcp (){
	gc $@
	git push
}

pushhops () {
	pushd . &> /dev/null
	echoColor "Hops"
	cd /home/salman/code/hops/hops && git push 
	echoColor "Hops-Metadata-Dal"
	cd /home/salman/code/hops/hops-metadata-dal && git push
	echoColor "Hops-Metadata-Dal-Impl-NDB"
	cd /home/salman/code/hops/hops-metadata-dal-impl-ndb && git push
	popd &> /dev/null 
}

pullhops (){
	pushd . &> /dev/null
	echoColor "Hops"
	cd /home/salman/code/hops/hops && git pull
	echoColor "Hops-Metadata-Dal"
	cd /home/salman/code/hops/hops-metadata-dal && git pull
	echoColor "Hops-Metadata-Dal-Impl-NDB"
	cd /home/salman/code/hops/hops-metadata-dal-impl-ndb && git pull
	popd &> /dev/null 
}

checkouthops (){
	pushd . &> /dev/null
	echoColor "Hops"
	cd /home/salman/code/hops/hops && git checkout $1
	echoColor "Hops-Metadata-Dal"
	cd /home/salman/code/hops/hops-metadata-dal && git checkout $1
	echoColor "Hops-Metadata-Dal-Impl-NDB"
	cd /home/salman/code/hops/hops-metadata-dal-impl-ndb && git checkout $1
	popd &> /dev/null 
}

#mvnc=' grep --line-buffered --color=always "\[INFO] Building\|\[ERROR].*\|\[WARN].*\| SUCCESS \[.*\| FAILURE \[.*\| SKIPPED" | red-grep  "^\|ERROR|WARN" | green-grep "^\|SUCCESS" | cyan-grep "^\|SKIPPED"'
mvnc=' grep --line-buffered --color=always "Installing\|Downloading\|\[INFO] Building\|\[ERROR].*\|\[WARN].*\| SUCCESS \[.*\| FAILURE \[.*\| SKIPPED\|\[WARNING]\|Building.*" | red-grep  "^\|\[ERROR]\|\[WARN]" | green-grep "^\|SUCCESS" | cyan-grep "^\|SKIPPED" | green-grep "^\|\[INFO]" | blue-grep "^\|Building.*" | grey-grep "^\|Installing\|Downloading"'

buildhopsi (){
#	set -e  # strange maven kill bash when there is a build failure
	pushd . &> /dev/null && \
	start=`date +%s` && \
	echoColor "Building Hops-gpu-management" && \
	eval "mvn -T 1C $@ install -Dmaven.test.skip=true -f ~/code/hops/hops-gpu-management/pom.xml " && \
	echoColor "Building Hops-gpu-management-impl-nvidia" && \
	eval "mvn -T 1C $@ install -Dmaven.test.skip=true -f ~/code/hops/hops-gpu-management-impl-nvidia/pom.xml " && \
	echoColor "Building Hops-metadata-dal" && \
	eval "mvn -T 1C $@ install -Dmaven.test.skip=true -f ~/code/hops/hops-metadata-dal/pom.xml " && \
	echoColor "Building Hops-metadata-dal-impl-ndb" && \
	eval "mvn -T 1C $@ install -Dmaven.test.skip=true -f ~/code/hops/hops-metadata-dal-impl-ndb/pom.xml " && \
	echoColor "Building Hops" && \
	eval "mvn -T 1C $@ install -Dmaven.test.skip=true generate-sources -f ~/code/hops/hops/pom.xml " && \
	#temporarily change pwd
	cd ~/code/hops/hops  && \
	echoColor "Building Hops Tests" && \
	eval "mvn -T 1C $@ test-compile " && \
	popd &> /dev/null  && \
	end=`date +%s` && \
	runtime=$((end-start)) && \
	echoColor "Total compilation time is : $runtime sec(s)"
}

buildhops (){
	eval "buildhopsi | $mvnc"
}

mi () {
 	eval	"mvn -T 1C $@ install -Dmaven.test.skip=true "
}

mig () {
	eval "mvn -T 1C $@ install -Dmaven.test.skip=true generate-sources -Pndb "
}


mtc () {
   eval "mvn -T 1C test-compile "
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

# touch pad
alias tpon='gsettings set org.gnome.desktop.peripherals.touchpad "send-events" "enabled"'
alias tpoff='gsettings set org.gnome.desktop.peripherals.touchpad "send-events" "disabled"'
alias tapon='gsettings set org.gnome.desktop.peripherals.touchpad "tap-to-click" "true"'
alias tapoff='gsettings set org.gnome.desktop.peripherals.touchpad "tap-to-click" "false"'

