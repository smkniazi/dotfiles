export_to(){
	eval value=\$$1
	if ! grep -q $2 <<< $value; then
		if [ -d "$2" ]; then
			if [ -z "$value" ]; then
				eval "export $1=$2"
			else
				eval "export $1=\$$1:$2"
			fi
		fi
	fi
}
 
export_to	PATH		~/usr/bin
export_to	PATH		~/usr/bin/jdk/bin
export_to	PATH		~/usr/bin/maven/bin
export_to	PATH		~/usr/bin/glark-1.7.10/bin
export_to	PATH		~/usr/bin/protobuf/src
export_to	PATH		~/usr/bin/set-pic-time
export_to	PATH		~/usr/bin/idea/bin
export_to	PATH		~/usr/bin/scala/bin
export_to	PATH		~/usr/bin/sbt/bin
export_to	PATH		~/usr/bin/latexdiff
export_to	PATH		~/usr/local/texlive/2016/bin/x86_64-linux

export_to 	LD_LIBRARY_PARTH	~/usr/bin/protobuf/src/.libs
export_to	LD_LIBRARY_PARTH	~/usr/bin/clusterj/

export_to	LIBNDBPATH 	~/usr/bin/clusterj
export_to	JAVA_HOME	~/usr/bin/jdk
export_to	M2_HOME		~/usr/bin/maven
