alias grey-grep="GREP_COLOR='1;30'    grep --color=always --line-buffered"
alias red-grep="GREP_COLOR='1;31'     grep --color=always --line-buffered"
alias green-grep="GREP_COLOR='1;32'   grep --color=always --line-buffered"
alias yellow-grep="GREP_COLOR='1;33'  grep --color=always --line-buffered"
alias blue-grep="GREP_COLOR='1;34'    grep --color=always --line-buffered"
alias magenta-grep="GREP_COLOR='1;35' grep --color=always --line-buffered"
alias cyan-grep="GREP_COLOR='1;36'    grep --color=always --line-buffered"

Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[1;36m'         # Cyan
White='\033[0;37m'        # White
NC='\033[0m' # No Color
echoColorCyan() {
	printf "${Cyan}$1${NC}\n"
}

echoColorGreen() {
	printf "${Green}$1${NC}\n"
	eval "$1"
}

create_path_alias(){
	if [ -d "$2" ]; then
		eval "alias $1=\"cd $2\""
	fi
}

create_path_alias	 h		 ~/code/hops/hops
create_path_alias	 hm		 ~/code/hops/hops-metadata-dal
create_path_alias	 hmi	 ~/code/hops/hops-metadata-dal-impl-ndb
create_path_alias	 hb		 ~/code/hops/hammer-bench
create_path_alias	 ds		 ~/code/hops/HopsFS-Deployment-Scripts
create_path_alias	 d		 ~/code/dotfiles
create_path_alias    p       ~/code/hops/hops-papers/hopsfs
create_path_alias    pt      ~/code/hops/hops-papers/hopsfs/salman-thesis


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

hops-push() {
	pushd . &> /dev/null 
	echoColorCyan "Hops" && \
	cd ~/code/hops/hops && git push  && \
	echoColorCyan "Hops-Metadata-Dal" && \
	cd ~/code/hops/hops-metadata-dal && git push && \
	echoColorCyan "Hops-Metadata-Dal-Impl-NDB" && \
	cd ~/code/hops/hops-metadata-dal-impl-ndb && git push  
	popd &> /dev/null 
}

hops-pull (){
	pulld . &> /dev/null 
	echoColorCyan "Hops" && \
	cd ~/code/hops/hops && git pull  && \
	echoColorCyan "Hops-Metadata-Dal" && \
	cd ~/code/hops/hops-metadata-dal && git pull && \
	echoColorCyan "Hops-Metadata-Dal-Impl-NDB" && \
	cd ~/code/hops/hops-metadata-dal-impl-ndb && git pull && \
	echoColorCyan "Hops-Gpu-Mgm" && \
	cd ~/code/hops/hops-gpu-management && git pull && \
	echoColorCyan "Hops-Gpu-Mgm-Impl" && \
	cd ~/code/hops/hops-gpu-management-impl-nvidia && git pull 
	popd &> /dev/null 
}

hops-checkout-branch (){
	if [ ! "$#" -eq 1 ]; then
	    echo "Please enter new branch name"
	    return 1
    fi
	pulld . &> /dev/null 
	echoColorCyan "Hops" && \
	cd ~/code/hops/hops && git checkout $1  && \
	echoColorCyan "Hops-Metadata-Dal" && \
	cd ~/code/hops/hops-metadata-dal && git checkout $1 && \
	echoColorCyan "Hops-Metadata-Dal-Impl-NDB" && \
	cd ~/code/hops/hops-metadata-dal-impl-ndb && git checkout $1 
	popd &> /dev/null 
}

hops-commit-and-push (){
	pulld . &> /dev/null 
	echoColorCyan "Hops" && \
	cd ~/code/hops/hops && gcp $@  && \
	echoColorCyan "Hops-Metadata-Dal" && \
	cd ~/code/hops/hops-metadata-dal && gcp $@ && \
	echoColorCyan "Hops-Metadata-Dal-Impl-NDB" && \
	cd ~/code/hops/hops-metadata-dal-impl-ndb && gcp $@ 
	popd &> /dev/null 
}

#mvnc=' grep --line-buffered --color=always "\[INFO] Building\|\[ERROR].*\|\[WARN].*\| SUCCESS \[.*\| FAILURE \[.*\| SKIPPED" | red-grep  "^\|ERROR|WARN" | green-grep "^\|SUCCESS" | cyan-grep "^\|SKIPPED"'
mvnc=' grep --line-buffered --color=always "Installing\|Downloading\|\[INFO] Building\|\[ERROR].*\|\[WARN].*\| SUCCESS \[.*\| FAILURE \[.*\| SKIPPED\|\[WARNING]\|Building.*" | red-grep  "^\|\[ERROR]\|\[WARN]" | green-grep "^\|SUCCESS" | cyan-grep "^\|SKIPPED" | green-grep "^\|\[INFO]" | blue-grep "^\|Building.*" | grey-grep "^\|Installing\|Downloading"'

hops-build-verbose (){
#	set -e  # strange maven kill bash when there is a build failure
	pushd . &> /dev/null && \
	start=`date +%s` && \
	echoColorCyan "Building Hops-gpu-management" && \
	eval "mvn  $@ install -Dmaven.test.skip=true -f ~/code/hops/hops-gpu-management/pom.xml " && \
	echoColorCyan "Building Hops-gpu-management-impl-nvidia" && \
	eval "mvn  $@ install -Dmaven.test.skip=true -f ~/code/hops/hops-gpu-management-impl-nvidia/pom.xml " && \
	echoColorCyan "Building Hops-metadata-dal" && \
	eval "mvn  $@ install -Dmaven.test.skip=true -f ~/code/hops/hops-metadata-dal/pom.xml " && \
	echoColorCyan "Building Hops-metadata-dal-impl-ndb" && \
	eval "mvn  $@ install -Dmaven.test.skip=true -f ~/code/hops/hops-metadata-dal-impl-ndb/pom.xml " && \
	echoColorCyan "Building Hops" && \
	eval "mvn  $@ install -Dmaven.test.skip=true generate-sources -f ~/code/hops/hops/pom.xml " && \
	#temporarily change pwd
	cd ~/code/hops/hops  && \
	echoColorCyan "Building Hops Tests" && \
	eval "mvn  $@ test-compile " && \
	popd &> /dev/null  && \
	end=`date +%s` && \
	runtime=$((end-start)) && \
	echoColorCyan "[INFO] Building Hops Took: $runtime sec(s)"
}

 hops-merge-upstream-master(){
	pushd . &> /dev/null && \
	start=`date +%s` && \
	echoColorCyan "FETCHING HOPS-GPU-MANAGEMENT" && \
	    cd ~/code/hops/hops-gpu-management && \
	    echoColorGreen "git pull" && \
	echoColorCyan "FETCHING HOPS-GPU-MANAGEMENT-IMPL-NVIDIA" && \
    	cd ~/code/hops/hops-gpu-management-impl-nvidia && \
    	echoColorGreen "git pull" && \
	echoColorCyan "FETCHING HOPS-METADATA-DAL" && \
	    cd ~/code/hops/hops-metadata-dal && \
	    echoColorGreen "git fetch upstream" && \
        echoColorGreen "git checkout master" && \
        echoColorGreen "git merge upstream/master" && \
        echoColorGreen "git push" && \
	echoColorCyan "FETCHING HOPS-METADATA-DAL-IMPL-NDB" && \
	    cd ~/code/hops/hops-metadata-dal-impl-ndb && \
	    echoColorGreen "git fetch upstream"  && \
        echoColorGreen "git checkout master" && \
        echoColorGreen "git merge upstream/master" && \
        echoColorGreen "git push" && \
	echoColorCyan "FETCHING HOPS" && \
        cd ~/code/hops/hops && \
        echoColorGreen "git fetch upstream" && \
	    echoColorGreen "git checkout master" && \
	    echoColorGreen "git merge upstream/master" && \
	    echoColorGreen "git push" && \
	popd &> /dev/null  && \
	end=`date +%s` && \
	runtime=$((end-start)) && \
	echoColorCyan "TOTAL COMPILATION TIME IS : $runtime SEC(S)"
}

hops-create-branch(){
	if [ ! "$#" -eq 1 ]; then
	    echo "Please enter new branch name"
	    return 1
    fi
	pushd . &> /dev/null && \
	start=`date +%s` && \
	echoColorCyan "CREATING BRANCH $1 IN HOPS-METADATA-DAL" && \
        cd ~/code/hops/hops-metadata-dal && \
        echoColorGreen "git checkout -b $1" && \
        echoColorGreen "git push origin -u $1" && \
	echoColorCyan "CREATING BRANCH $1 HOPS-METADATA-DAL-IMPL-NDB" && \
        cd ~/code/hops/hops-metadata-dal-impl-ndb && \
        echoColorGreen "git checkout -b $1" && \
        echoColorGreen "git push origin -u $1" && \
	echoColorCyan "CREATING BRANCH $1 HOPS" && \
        cd ~/code/hops/hops && \
        echoColorGreen "git checkout -b $1" && \
        echoColorGreen "git push origin -u $1" && \
	popd &> /dev/null  && \
	end=`date +%s` && \
	runtime=$((end-start)) && \
	echoColorCyan "TOTAL TIME IS : $runtime SEC(S)"
}

hops-status(){
	pushd . &> /dev/null && \
	echoColorCyan "HOPS-METADATA-DAL" && \
        cd ~/code/hops/hops-metadata-dal && \
        git status && \
	echoColorCyan "HOPS-METADATA-DAL-IMPL-NDB" && \
        cd ~/code/hops/hops-metadata-dal-impl-ndb && \
        git status && \
	echoColorCyan "HOPS" && \
        cd ~/code/hops/hops && \
        git status && \
	popd &> /dev/null
}


hops-build (){
	eval "hops-build-verbose | $mvnc"
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

if [ -n "$DISPLAY" ]; then
   Xaxis=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f1)
   if [ "$Xaxis" -gt "2000" ]; then
   	   alias mupdf="mupdf -r 400"
   fi
fi

tmux-pane-color(){
  	tmux select-pane -t:.$1 -P "fg=$2,bg=$3"
  	if [ "$?" -ne "0" ]; then
  		echo "Usage command {pane-number} {fg-color} {bg-color} "
  	fi
}

