#!/bin/bash
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
            break
            ;;
        *) echo invalid option;;
    esac
done
