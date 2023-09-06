#!/usr/bin/bash

foldername="" # filename variable
username="" # username variable

# usage function
usage(){
	echo "Usage: $0 -fn <foldername> -un <username>"
	exit 1
}

# parse inputs
while getopts ":fn:un" opt; do
	case $opt in
	fn) foldername = "$OPTARG" ;;
	un) username = "$OPTARG" ;;
	esac
done

# assign
if [ -z "$foldername"] || [-z "$username"]; then 
	usage
fi

git init # initialize
gh repo create $foldername --public --add-readme
git remote add origin https://github.com/$username/$foldername.git 

