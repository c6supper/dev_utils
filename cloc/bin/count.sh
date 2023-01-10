#!/bin/bash

__usage="
Usage: $(basename $0) [OPTIONS]
1. root source code path for project
Options(optional):
2. source code path for HMI
"
echo "$__usage"

if [ -z "$1" ]
then
    echo "Error: Please run with root source code path for project."
    exit 1
fi

if [ ! -d "$1" ] 
then
    echo "Error: Source code path is not exist."
    exit 2
fi

# for vendor , nobo etc.
echo "cout line for vendor"
./bin/cloc $1 --config options/vendor/options.txt --processes=`grep -c ^processor /proc/cpuinfo`;

# for ic_vendor , qualcomm etc.
echo "cout line for ic_vendor"
./bin/cloc $1 --config options/ic_vendor/options.txt --processes=`grep -c ^processor /proc/cpuinfo`;

# for third_party , google etc.
echo "cout line for third_party"
./bin/cloc $1 --config options/third_party/options.txt --processes=`grep -c ^processor /proc/cpuinfo`;

if [ ! -z "$2" ]
then
    echo "cout line for HMI";
    ./bin/cloc $2 --include-lang="Java,C/C++ Header,C,C++,Protocol Buffers,XML,Python,JSON,Rust,Bourne Shell,Markdown,make,CMake" --processes=`grep -c ^processor /proc/cpuinfo`;
fi