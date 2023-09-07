#!/bin/bash

foldername="" # filename variable
username="" # username variable


# parse inputs
while getopts ":fn:un" opt; do
	case $opt in
	fn) foldername="$OPTARG" ;;
	un) username="$OPTARG" ;;
	esac
done

# git function
mkdir $foldername
git init $foldername #initialize
gh repo create $foldername --public --add-readme
git remote add origin https://github.com/$username/$foldername.git
