#!/bin/bash

dest=$1

case $dest in 
	*".h") src="header.h" ;;
	*"main"*".c") src="main.c" ;;
	*".c") src="file.c" ;;
	*) ;;
esac

if [ -z ${src+x} ]; then
	echo "No starter files for file: $1"
else
	find ~ -name $src -exec cp '{}' $dest \; 
fi
