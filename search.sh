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

		echo
		echo
		echo
    	echo -n "What would you like for me to search for you?:  "
    	read action
    	set -x
    	echo
        grep -rni "$PWD/" -e "$action"
        echo
        set +x        
