#!/bin/bash

# Usage: kicks files to GitHub with one kick.

files=""
message=""

usage(){
    echo "usage: $0 -f <filename or A (all)>"
}

# parse inputs
while getopts "f:m:use:" opt; do
	case $opt in
	f) files="$OPTARG" ;;
    m) message="$OPTARG" ;;
    use) 
        usage
        exit ;;
	esac
done

barfoot(){
    git add $files
    git commit -m $message
    git push origin main
}

barefoot
