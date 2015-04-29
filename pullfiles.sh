#!/bin/bash
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
            break
            ;;
        *) echo invalid option;;
    esac
done
