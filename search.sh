#!/bin/bash

# This module is for searching in the current directory that you are in

		echo
		echo
		echo -n "Make sure you have CD'd into the directory in which you want to search"
		echo
		echo
		echo
    	echo -n "What would you like for me to search for you?:  "
    	read action
    	set -x
        grep -rni "$PWD/" -e "$action"
        set +x        
