export_path(){
	if ! grep -q $1 <<< $PATH; then
		if [ -d "$1" ]; then
			export PATH=$PATH:$1
		fi
	fi
}
 
export_ld_lib_path(){
	if ! grep -q $1 <<< $LD_LIBRARY_PATH; then
		if [ -d "$1" ]; then
			export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$1
		fi
	fi
}

export_ld_lib_path ~/program_files/protobuf/src/.libs
export_ld_lib_path ~/program_files/clusterj/

export_path ~/program_files
export_path ~/program_files/jdk/bin
export_path ~/program_files/maven/bin
export_path ~/program_files/glark-1.7.10/bin
export_path ~/program_files/protobuf/src
export_path ~/program_files/set-pic-time
export_path ~/program_files/idea/bin
export_path ~/program_files/scala/bin
export_path ~/program_files/sbt/bin
export_path ~/program_files/latexdiff
export_path ~/usr/local/texlive/2016/bin/x86_64-linux
export_path ~/Dropbox


export LIBNDBPATH=/home/salman/program_files/clusterj
export JAVA_HOME=/home/salman/program_files/jdk
export M2_HOME=/home/salman/program_files/maven
