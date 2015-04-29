#!/bin/bash
PS3='Please enter your choice: '
options=("Pull Database from Staging" "Push Database to Staging" "Pull Files from Staging" "Push Files To Staging" "Clear Cache All" "Download Module" "Enable Module (local)" "Enable Module (Staging)" "Disable Module (local)" "Disable Module (Staging)" "Uninstall Module" "Update DB (local)" "Update DB (Staging)" "Feature Revert (local)" "Feature Revert (staging)" "drush Status" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Pull Database from Staging")
            PS3='Please enter your choice: '
              options=("home" "admin" "admins" "blogs" "cas" "cobe" "coe" "con" "dev" "fnd" "grad" "gradadmis" "iss" "mahg" "mba" "news" "staf" "train" "Quit")
              select opt in "${options[@]}"
              do
                  case $opt in
                      "home")
                          drush sql-sync @stg-admin @loc-admin --no-cache --create-db
                          break
                          ;;
                      "admin")
                          drush sql-sync @stg-staf @loc-staf --no-cache --create-db
                          break
                          ;;
                      "admins")
                          drush sql-sync @stg-admins @loc-admins --no-cache --create-db
                          break
                          ;;
                      "blogs")
                          drush sql-sync @stg-blogs @loc-blogs --no-cache --create-db
                          break
                          ;;
                      "cas")
                          drush sql-sync @stg-cas @loc-cas --no-cache --create-db
                          break
                          ;;
                      "cobe")
                          drush sql-sync @stg-cobe @loc-cobe --no-cache --create-db
                          break
                          ;;
                      "coe")
                          drush sql-sync @stg-coe @loc-coe --no-cache --create-db
                          break
                          ;;
                      "con")
                          drush sql-sync @stg-con @loc-con --no-cache --create-db
                          break
                          ;;
                      "dev")
                          drush sql-sync @stg-dev @loc-dev --no-cache --create-db
                          break
                          ;;
                      "fnd")
                          drush sql-sync @stg-fnd @loc-fnd --no-cache --create-db
                          break
                          ;;
                      "grad")
                          drush sql-sync @stg-grad @loc-grad --no-cache --create-db
                          break
                          ;;
                      "gradadmis")
                          drush sql-sync @stg-gradadmis @loc-gradadmis --no-cache --create-db
                          break
                          ;;
                      "iss")
                          drush sql-sync @stg-iss @loc-iss --no-cache --create-db
                          break
                          ;;
                      "mahg")
                          drush sql-sync @stg-mahg @loc-mahg --no-cache --create-db
                          break
                          ;;
                      "mba")
                          drush sql-sync @stg-mba @loc-mba --no-cache --create-db
                          break
                          ;;
                      "news")
                          drush sql-sync @stg-news @loc-news --no-cache --create-db
                          break
                          ;;
                      "staf")
                          drush sql-sync @stg-staf @loc-staf --no-cache --create-db
                          break
                          ;;
                      "train")
                          drush sql-sync @stg-train @loc-train --no-cache --create-db
                          break
                          ;;
                      "Quit")
                          echo -e "\nThanks for using Drush by Joseph\n"
                          break
                          ;;
                      *) echo invalid option;;
                  esac
              done
            break
            ;;
        "Push Database to Staging")
            PS3='Please enter your choice: '
              options=("home" "admin" "admins" "blogs" "cas" "cobe" "coe" "con" "dev" "fnd" "grad" "gradadmis" "iss" "mahg" "mba" "news" "staf" "train" "Quit")
              select opt in "${options[@]}"
              do
                  case $opt in
                      "home")
                          drush sql-sync @loc-admin @stg-admin --no-cache --create-db
                          break
                          ;;
                      "admin")
                          drush sql-sync @loc-staf @stg-staf --no-cache --create-db
                          break
                          ;;
                      "admins")
                          drush sql-sync @loc-admins @stg-admins --no-cache --create-db
                          break
                          ;;
                      "blogs")
                          drush sql-sync @loc-blogs @stg-blogs --no-cache --create-db
                          break
                          ;;
                      "cas")
                          drush sql-sync @loc-cas @stg-cas --no-cache --create-db
                          break
                          ;;
                      "cobe")
                          drush sql-sync @loc-cobe @stg-cobe --no-cache --create-db
                          break
                          ;;
                      "coe")
                          drush sql-sync @loc-coe @stg-coe --no-cache --create-db
                          break
                          ;;
                      "con")
                          drush sql-sync @loc-con @stg-con --no-cache --create-db
                          break
                          ;;
                      "dev")
                          drush sql-sync @loc-dev @stg-dev --no-cache --create-db
                          break
                          ;;
                      "fnd")
                          drush sql-sync @loc-fnd @stg-fnd --no-cache --create-db
                          break
                          ;;
                      "grad")
                          drush sql-sync @loc-grad @stg-grad --no-cache --create-db
                          break
                          ;;
                      "gradadmis")
                          drush sql-sync @loc-gradadmis @stg-gradadmis --no-cache --create-db
                          break
                          ;;
                      "iss")
                          drush sql-sync @loc-iss @stg-iss --no-cache --create-db
                          break
                          ;;
                      "mahg")
                          drush sql-sync @loc-mahg @stg-mahg --no-cache --create-db
                          break
                          ;;
                      "mba")
                          drush sql-sync @loc-mba @stg-mba --no-cache --create-db
                          break
                          ;;
                      "news")
                          drush sql-sync @loc-news @stg-news --no-cache --create-db
                          break
                          ;;
                      "staf")
                          drush sql-sync @loc-staf @stg-staf --no-cache --create-db
                          break
                          ;;
                      "train")
                          drush sql-sync @loc-train @stg-train --no-cache --create-db
                          break
                          ;;
                      "Quit")
                          echo -e "\nThanks for using Drush by Joseph\n"
                          break
                          ;;
                      *) echo invalid option;;
                  esac
              done
            break
            ;;
        "Pull Files from Staging")
            PS3='Please enter your choice: '
              options=("home" "admin" "admins" "blogs" "cas" "cobe" "coe" "con" "dev" "fnd" "grad" "gradadmis" "iss" "mahg" "mba" "news" "staf" "train" "Quit")
              select opt in "${options[@]}"
              do
                  case $opt in
                      "home")
                          drush rsync @stg-admin:%files @loc-admin:%files
                          break
                          ;;
                      "admin")
                          drush rsync @stg-staf:%files @loc-staf:%files
                          break
                          ;;
                      "admins")
                          drush rsync @stg-admins:%files @loc-admins:%files
                          break
                          ;;
                      "blogs")
                          drush rsync @stg-blogs:%files @loc-blogs:%files
                          break
                          ;;
                      "cas")
                          drush rsync @stg-cas:%files @loc-cas:%files
                          break
                          ;;
                      "cobe")
                          drush rsync @stg-cobe:%files @loc-cobe:%files
                          break
                          ;;
                      "coe")
                          drush rsync @stg-coe:%files @loc-coe:%files
                          break
                          ;;
                      "con")
                          drush rsync @stg-con:%files @loc-con:%files
                          break
                          ;;
                      "dev")
                          drush rsync @stg-dev:%files @loc-dev:%files
                          break
                          ;;
                      "fnd")
                          drush rsync @stg-fnd:%files @loc-fnd:%files
                          break
                          ;;
                      "grad")
                          drush rsync @stg-grad:%files @loc-grad:%files
                          break
                          ;;
                      "gradadmis")
                          drush rsync @stg-gradadmis:%files @loc-gradadmis:%files
                          break
                          ;;
                      "iss")
                          drush rsync @stg-iss:%files @loc-iss:%files
                          break
                          ;;
                      "mahg")
                          drush rsync @stg-mahg:%files @loc-mahg:%files
                          break
                          ;;
                      "mba")
                          drush rsync @stg-mba:%files @loc-mba:%files
                          break
                          ;;
                      "news")
                          drush rsync @stg-news:%files @loc-news:%files
                          break
                          ;;
                      "staf")
                          drush rsync @stg-staf:%files @loc-staf:%files
                          break
                          ;;
                      "train")
                          drush rsync @stg-train:%files @loc-train:%files
                          break
                          ;;
                      "Quit")
                          echo -e "\nThanks for using Drush by Joseph\n"
                          break
                          ;;
                      *) echo invalid option;;
                  esac
              done
            break
            ;;
        "Push Files To Staging")
            PS3='Please enter your choice: '
              options=("home" "admin" "admins" "blogs" "cas" "cobe" "coe" "con" "dev" "fnd" "grad" "gradadmis" "iss" "mahg" "mba" "news" "staf" "train" "Quit")
              select opt in "${options[@]}"
              do
                  case $opt in
                      "home")
                          drush rsync @loc-admin:%files @stg-admin:%files
                          break
                          ;;
                      "admin")
                          drush rsync @loc-staf:%files @stg-staf:%files
                          break
                          ;;
                      "admins")
                          drush rsync @loc-admins:%files @stg-admins:%files
                          break
                          ;;
                      "blogs")
                          drush rsync @loc-blogs:%files @stg-blogs:%files
                          break
                          ;;
                      "cas")
                          drush rsync @loc-cas:%files @stg-cas:%files
                          break
                          ;;
                      "cobe")
                          drush rsync @loc-cobe:%files @stg-cobe:%files
                          break
                          ;;
                      "coe")
                          drush rsync @loc-coe:%files @stg-coe:%files
                          break
                          ;;
                      "con")
                          drush rsync @loc-con:%files @stg-con:%files
                          break
                          ;;
                      "dev")
                          drush rsync @loc-dev:%files @stg-dev:%files
                          break
                          ;;
                      "fnd")
                          drush rsync @loc-fnd:%files @stg-fnd:%files
                          break
                          ;;
                      "grad")
                          drush rsync @loc-grad:%files @stg-grad:%files
                          break
                          ;;
                      "gradadmis")
                          drush rsync @loc-gradadmis:%files @stg-gradadmis:%files
                          break
                          ;;
                      "iss")
                          drush rsync @loc-iss:%files @stg-iss:%files
                          break
                          ;;
                      "mahg")
                          drush rsync @loc-mahg:%files @stg-mahg:%files
                          break
                          ;;
                      "mba")
                          drush rsync @loc-mba:%files @stg-mba:%files
                          break
                          ;;
                      "news")
                          drush rsync @loc-news:%files @stg-news:%files
                          break
                          ;;
                      "staf")
                          drush rsync @loc-staf:%files @stg-staf:%files
                          break
                          ;;
                      "train")
                          drush rsync @loc-train:%files @stg-train:%files
                          break
                          ;;
                      "Quit")
                          echo -e "\nThanks for using Drush by Joseph\n"
                          break
                          ;;
                      *) echo invalid option;;
                  esac
              done
            break
            ;;
        "Clear Cache All")
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
            echo -n "Enter Location > @loc-"
            read loc
            echo -n "Enter Module Name > "
            read text
            drush @loc-$loc dis $text
            break
            ;;
        "Disable Module (Staging)")
            echo -n "Enter Location > @stg-"
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
            echo -n "Enter Location > @loc-"
            read loc
            drush @loc-$loc updatedb
            break
            ;;
        "Update DB (Staging)")
            echo -n "Enter Location > @stg-"
            read loc
            drush @stg-$loc updatedb
            break
            ;;
        "Feature Revert (local)")
            echo -n "Enter Location > @loc-"
            read loc
            echo -n "Enter Module Name > "
            read text
            drush @loc-$loc fr $text
            break
            ;;
        "Feature Revert (staging)")
            echo -n "Enter Location > @stg-"
            read loc
            echo -n "Enter Module Name > "
            read text
            drush @stg-$loc fr $text
            break
            ;;
        "drush Status")
            drush status
            break
            ;;
        "Quit")
            echo -e "\nThanks for using Drush by Joseph\n"
            break
            ;;
        *) echo invalid option;;
    esac
done
