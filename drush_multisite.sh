#!/bin/bash

# This module is for doing drush actions on multiple sites in a multisite environment.
# Apparently, using something like 'drush en module_name @site1,@site2,@site3,... can
# bring a server to its knees, so we need to make sure it is working on a single site
# at a time.

# USAGE:
# ./drush_multisite.sh <site_aliases> <drush_commands>
# where:
#    site_aliases is a comma separated list of aliases (ie. @site1,@site2,...)
#    drush_commands
#
# Note that this will only work with drush commands that would use the format of
# drush <site_alias> <command> <parameters>

PS3='Please enter your choice: '
options=("all-loc" "all-dev" "all-stg" "all-prod" "Quit")
select opt in "${options[@]}"

do
	site_suffixes=('home' 'admin' 'admis' 'blog' 'cas' 'cobe' 'coe' 'con' 'dev' 'fnd' 'grad' 'gradadmis' 'iss' 'mba' 'mahg' 'staf' 'train' 'news' )
	num_suffixes=${#site_suffixes[@]}
    case $opt in
    "all-loc" )
    	echo -n "Enter Drush Action (ex: fr, or cc):  "
    	read action
		echo -n "Enter Parameter Name:  "
    	read command
    	set -x
        for (( i=0; i<${num_suffixes}; i++ ))
        do
            drush @loc-"${site_suffixes[${i}]}" $action $command
        done
        set +x
        break
        ;;

    "all-dev" )
    	echo -n "Enter Drush Action (ex: fr, or cc):  "
    	read action
		echo -n "Enter Parameter Name:  "
    	read command
    	set -x
        for (( i=0; i<${num_suffixes}; i++ ))
        do
            drush @dev-"${site_suffixes[${i}]}" $action $command
        done
        set +x
        break
        ;;

    "all-stg" )
 	    echo -n "Enter Drush Action (ex: fr, or cc):  "
    	read action
		echo -n "Enter Parameter Name:  "
    	read command
    	set -x
        for (( i=0; i<${num_suffixes}; i++ ))
        do
            drush @stg-"${site_suffixes[${i}]}" $action $command
        done
        set +x
        break
        ;;

    "all-prod" )
    	echo -n "Enter Drush Action (ex: fr, or cc):  "
    	read action
		echo -n "Enter Parameter Name:  "
    	read command
    	set -x
        for (( i=0; i<${num_suffixes}; i++ ))
        do
            drush @prod-"${site_suffixes[${i}]}" $action $command
        done
        set +x
        break
        ;;
        
    "Quit")
            echo -e "\nThank You, Please Code Safely\n"
            break
            ;;
        *) echo invalid option;;
	esac
done