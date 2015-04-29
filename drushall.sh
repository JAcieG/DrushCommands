#!/bin/bash
PS3='Please enter your choice: '
options=("Pull Database from Staging" "Push Database to Staging" "Pull Files from Staging" "Push Files To Staging" "Clear Cache All" "Download Module" "Enable Module (local)" "Enable Module (Staging)" "Disable Module (local)" "Disable Module (Staging)" "Uninstall Module" "Update DB (local)" "Update DB (Staging)" "Feature Revert (local)" "Feature Revert (staging)" "drush Status" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Pull Database from Staging")
            PS3='Please enter your choice: '
              options=("home" "admin" "admins" "blogs" "cas" "cobe" "coe" "con" "dev" "fnd" "grad" "gradadmis" "iss" "mahg" "mba" "news" "staf" "train")
              select loc in "${options[@]}"
              do
                set -x
                drush sql-sync @stg-$loc @loc-$loc --no-cache --create-db
                set +x
                done
              break
              ;;
        "Push Database to Staging")
            PS3='Please enter your choice: '
              options=("home" "admin" "admins" "blogs" "cas" "cobe" "coe" "con" "dev" "fnd" "grad" "gradadmis" "iss" "mahg" "mba" "news" "staf" "train")
              select loc in "${options[@]}"
              do  
                set -x
                drush sql-sync @loc-$loc @stg-$loc --no-cache --create-db
                set +x
                done
              break
              ;;
        "Pull Files from Staging")
            PS3='Please enter your choice: '
              options=("home" "admin" "admins" "blogs" "cas" "cobe" "coe" "con" "dev" "fnd" "grad" "gradadmis" "iss" "mahg" "mba" "news" "staf" "train")
              select loc in "${options[@]}"
              do
                set -x
                drush rsync @stg-$loc:%files @loc-$loc:%files
                set +x
                done
              break
              ;;
        "Push Files To Staging")
            PS3='Please enter your choice: '
              options=("home" "admin" "admins" "blogs" "cas" "cobe" "coe" "con" "dev" "fnd" "grad" "gradadmis" "iss" "mahg" "mba" "news" "staf" "train")
              select loc in "${options[@]}"
              do
                set -x
                drush rsync @loc-$loc:%files @stg-$loc:%files
                set +x
              done
              break
              ;;
        "Clear Cache All")
            set -x
            drush cc all
            set +x
            break
            ;;
        "Download Module")
            echo -n "Enter Module Name > "
            read text
            set -x
            drush dl $text
            set +x
            break
            ;;
        "Enable Module (local)")
            PS3='Please enter your choice: '
            options=("home" "admin" "admins" "blogs" "cas" "cobe" "coe" "con" "dev" "fnd" "grad" "gradadmis" "iss" "mahg" "mba" "news" "staf" "train")
            select loc in "${options[@]}"
            do
              echo -n "Enter Module Name > "
              read text
              set -x
              drush @loc-$opt en $text
              set +x
            done
            break
            ;;
        "Enable Module (Staging)")
            PS3='Please enter your choice: '
            options=("home" "admin" "admins" "blogs" "cas" "cobe" "coe" "con" "dev" "fnd" "grad" "gradadmis" "iss" "mahg" "mba" "news" "staf" "train")
            select loc in "${options[@]}"
            do
              echo -n "Enter Module Name > "
              read text
              set -x
              drush @stg-$loc en $text
              set +x
            done
            break
            ;;
        "Disable Module (local)")
            PS3='Please enter your choice: '
            options=("home" "admin" "admins" "blogs" "cas" "cobe" "coe" "con" "dev" "fnd" "grad" "gradadmis" "iss" "mahg" "mba" "news" "staf" "train")
            select loc in "${options[@]}"
            do
              echo -n "Enter Module Name > "
              read text
              set -x
              drush @loc-$loc dis $text
              set +x
            done
            break
            ;;
        "Disable Module (Staging)")
            PS3='Please enter your choice: '
            options=("home" "admin" "admins" "blogs" "cas" "cobe" "coe" "con" "dev" "fnd" "grad" "gradadmis" "iss" "mahg" "mba" "news" "staf" "train")
            select loc in "${options[@]}"
            do
              echo -n "Enter Module Name > "
              read text
              set -x
              drush @stg-$loc dis $text
              set +x
            done
            break
            ;;
        "Uninstall Module")
            echo -n "Enter Module Name > "
            read text
            set -x
            drush pm-uninstall $text ctools
            set +x
            break
            ;;
        "Update DB (Local)")
            echo -n "Enter Location > @loc-"
            read loc
            set -x
            drush @loc-$loc updatedb
            set +x
            break
            ;;
        "Update DB (Staging)")
            PS3='Please enter your choice: '
            options=("home" "admin" "admins" "blogs" "cas" "cobe" "coe" "con" "dev" "fnd" "grad" "gradadmis" "iss" "mahg" "mba" "news" "staf" "train")
            select loc in "${options[@]}"
            do
              set -x
              drush @stg-$loc updatedb
              set +x
            done
            break
            ;;
        "Feature Revert (local)")
            PS3='Please enter your choice: '
            options=("home" "admin" "admins" "blogs" "cas" "cobe" "coe" "con" "dev" "fnd" "grad" "gradadmis" "iss" "mahg" "mba" "news" "staf" "train")
            select loc in "${options[@]}"
            do
              echo -n "Enter Module Name > "
              read text
              set -x
              drush @loc-$loc fr $text
              set +x
            done
            break
            ;;
        "Feature Revert (staging)")
           PS3='Please enter your choice: '
            options=("home" "admin" "admins" "blogs" "cas" "cobe" "coe" "con" "dev" "fnd" "grad" "gradadmis" "iss" "mahg" "mba" "news" "staf" "train")
            select loc in "${options[@]}"
            do
              echo -n "Enter Module Name > "
              read text
              set -x
              drush @stg-$loc fr $text
              set +x
            done
            break
            ;;
        "drush Status")
            set -x
            drush status
            set +x
            break
            ;;
        "Quit")
            echo -e "\nThanks for using Drush by Joseph\n"
            break
            ;;
        *) echo invalid option;;
    esac
done
