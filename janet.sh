#!/bin/bash

dest=$1

case $dest in 
	*".h") src="header.h" ;;
	"_putchar.c") src="_putchar.c" ;;
	*"main"*".c") src="main.c" ;;
	*".c") src="file.c" ;;
	*) ;;
esac

if [ -z ${src+x} ]; then
	echo "No starter files for file: $1"
else
	find ~ -name $src -exec cp '{}' $dest \; && vi $dest 
fi
