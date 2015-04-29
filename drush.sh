#!/bin/bash
PS3='Please enter your choice: '
options=("Clear Cache" "Download Module" "Enable Module (local)" "Enable Module (Staging)" "Disable Module (local)" "Disable Module (Staging)" "Uninstall Module" "Update DB (local)" "Update DB (Staging)" "Feature Revert (local)" "Feature Revert (staging)" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Clear Cache")
            drush cc all
            break
            ;;
        "Download Module")
            echo -n "Enter Module Name > "
            read text
            drush dl $text
            break
            ;;
        "Enable Module (local)")
            echo -n "Enter Location > @loc-"
            read loc
            echo -n "Enter Module Name > "
            read text
            drush @loc-$loc en $text
            break
            ;;
        "Enable Module (Staging)")
            echo -n "Enter Location > @stg-"
            read loc
            echo -n "Enter Module Name > "
            read text
            drush @stg-$loc en $text
            break
            ;;
        "Disable Module (local)")
            echo -n "Enter Location > @loc- "
            read loc
            echo -n "Enter Module Name > "
            read text
            drush @loc-$loc dis $text
            break
            ;;
        "Disable Module (Staging)")
            echo -n "Enter Location > @stg- "
            read loc
            echo -n "Enter Module Name > "
            read text
            drush @stg-$loc dis $text
            break
            ;;
        "Uninstall Module")
            echo -n "Enter Module Name > "
            read text
            drush pm-uninstall $text ctools
            break
            ;;
        "Update DB (Local)")
            echo -n "Enter Location > @loc- "
            read loc
            drush @loc-$loc updatedb
            break
            ;;
        "Update DB (Staging)")
            echo -n "Enter Location > @stg- "
            read loc
            drush @stg-$loc updatedb
            break
            ;;
        "Feature Revert (Local)")
            echo -n "Enter Location > @loc- "
            read loc
            echo -n "Enter Module Name > "
            read text
            drush @loc-$loc fr $text
            break
            ;;
        "Feature Revert (staging)")
            echo -n "Enter Location > @stg- "
            read loc
            echo -n "Enter Module Name > "
            read text
            drush @stg-$loc fr $text
            break
            ;;
        "Quit")
            echo -e "\nThank you come again\n"
            break
            ;;
        *) echo invalid option;;
    esac
done
