#!/bin/bash
export CC=~/program_files/gcc/bin/gcc
export CXX=~/program_files/gcc/bin/g++
cmake src/
make 
mvn install:install-file -Dfile=../classes/libhopsyarn.so -DgroupId=io.hops.streaming -DartifactId=libhopsyarn -Dversion=1.0 -Dpackaging=so










