#!/bin/bash
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
            break
            ;;
        *) echo invalid option;;
    esac
done
