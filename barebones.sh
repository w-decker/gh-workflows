#!/bin/bash

foldername="" # filename variable
username="" # username variable


# parse inputs
while getopts ":f:u:" opt; do
	case $opt in
	f) foldername="$OPTARG" ;;
	u) username="$OPTARG" ;;
	esac
done

# git function
gitdo(){
    mkdir $foldername
    git init $foldername #initialize
    cd $foldername
    gh repo create $foldername --public --add-readme
    git remote add origin https://github.com/$username/$foldername.git
    echo A new GitHub repo was created in $(pwd) by $username called $foldername.
    git pull origin main
}

gitdo


