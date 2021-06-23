#!/bin/bash

NC='\033[0m' # No Color
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
WHITE='\033[1;37m'
BLUE='\033[0;34m'

list=$(cat $1)
name=$2

# echo "$file $name"

for file in $list
do
    echo ""
    echo -e "${YELLOW}Cloning ${WHITE}$file.\n"
    # git clone "http://$name.stash.com.au/$file.git"
    
    if test $? -eq 0
    then
        echo -e "${GREEN}Successfully cloned ${WHITE}$file."
    else
        echo -e "${RED}Failed to clone ${WHITE}$file."
    fi

done

echo ""