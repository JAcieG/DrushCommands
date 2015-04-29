#!/bin/bash
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
            break
            ;;
        *) echo invalid option;;
    esac
done
