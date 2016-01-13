#!/bin/bash
PS3='Please enter your choice: '
options=("all" "admin" "admins" "blogs" "cas" "cobe" "cobe-accounting" "coe" "con" "dev" "fnd" "grad" "gradadmis" "iss" "mahg" "mba" "news" "staf" "train" "blogs" "default" "news" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "all")
            set -x
                cd /var/www/AshlandU/d7.ashlandu/docroot/sites/all
                chmod g+ws files
                find . -type d -exec chmod g+ws {} \;
                find . -type f -exec chmod 664 {} \;
                find . -type d -exec chown :www-data {} \;
                find . -type f -exec chown :www-data {} \;
                set +x
              break
              ;;
        "admin")
                set -x
                cd /var/www/AshlandU/d7.ashlandu/docroot/sites/ashland.edu.administration
                chmod g+ws files
                find . -type d -exec chmod g+ws {} \;
                find . -type f -exec chmod 664 {} \;
                find . -type d -exec chown :www-data {} \;
                find . -type f -exec chown :www-data {} \;
                set +x
              break
              ;;
        "admins")
            set -x
                cd /var/www/AshlandU/d7.ashlandu/docroot/sites/ashland.edu.admissions
                chmod g+ws files
                find . -type d -exec chmod g+ws {} \;
                find . -type f -exec chmod 664 {} \;
                find . -type d -exec chown :www-data {} \;
                find . -type f -exec chown :www-data {} \;
                set +x
              break
              ;;
        "cas")
            set -x
                cd /var/www/AshlandU/d7.ashlandu/docroot/sites/ashland.edu.cas
                chmod g+ws files
                find . -type d -exec chmod g+ws {} \;
                find . -type f -exec chmod 664 {} \;
                find . -type d -exec chown :www-data {} \;
                find . -type f -exec chown :www-data {} \;
                set +x
              break
              ;;
        "cobe")
            set -x
                cd /var/www/AshlandU/d7.ashlandu/docroot/sites/ashland.edu.cobe
                chmod g+ws files
                find . -type d -exec chmod g+ws {} \;
                find . -type f -exec chmod 664 {} \;
                find . -type d -exec chown :www-data {} \;
                find . -type f -exec chown :www-data {} \;
                set +x
              break
              ;;
        "cobe-accounting")
            set -x
                cd /var/www/AshlandU/d7.ashlandu/docroot/sites/ashland.edu.cobe.accounting-information-systems
                chmod g+ws files
                find . -type d -exec chmod g+ws {} \;
                find . -type f -exec chmod 664 {} \;
                find . -type d -exec chown :www-data {} \;
                find . -type f -exec chown :www-data {} \;
                set +x
              break
              ;;
        "coe")
            set -x
                cd /var/www/AshlandU/d7.ashlandu/docroot/sites/ashland.edu.coe
                chmod g+ws files
                find . -type d -exec chmod g+ws {} \;
                find . -type f -exec chmod 664 {} \;
                find . -type d -exec chown :www-data {} \;
                find . -type f -exec chown :www-data {} \;
                set +x
              break
              ;;
        "conhs")
            set -x
                cd /var/www/AshlandU/d7.ashlandu/docroot/sites/ashland.edu.conhs
                chmod g+ws files
                find . -type d -exec chmod g+ws {} \;
                find . -type f -exec chmod 664 {} \;
                find . -type d -exec chown :www-data {} \;
                find . -type f -exec chown :www-data {} \;
                set +x
              break
              ;;
        "dev")
            set -x
                cd /var/www/AshlandU/d7.ashlandu/docroot/sites/ashland.edu.development
                chmod g+ws files
                find . -type d -exec chmod g+ws {} \;
                find . -type f -exec chmod 664 {} \;
                find . -type d -exec chown :www-data {} \;
                find . -type f -exec chown :www-data {} \;
                set +x
              break
              ;;
        "fnd")
            set -x
                cd /var/www/AshlandU/d7.ashlandu/docroot/sites/ashland.edu.founders
                chmod g+ws files
                find . -type d -exec chmod g+ws {} \;
                find . -type f -exec chmod 664 {} \;
                find . -type d -exec chown :www-data {} \;
                find . -type f -exec chown :www-data {} \;
                set +x
              break
              ;;
        "grad")
            set -x
                cd /var/www/AshlandU/d7.ashlandu/docroot/sites/ashland.edu.graduate
                chmod g+ws files
                find . -type d -exec chmod g+ws {} \;
                find . -type f -exec chmod 664 {} \;
                find . -type d -exec chown :www-data {} \;
                find . -type f -exec chown :www-data {} \;
                set +x
              break
              ;;
        "gradadmins")
            set -x
                cd /var/www/AshlandU/d7.ashlandu/docroot/sites/ashland.edu.graduate-admissions
                chmod g+ws files
                find . -type d -exec chmod g+ws {} \;
                find . -type f -exec chmod 664 {} \;
                find . -type d -exec chown :www-data {} \;
                find . -type f -exec chown :www-data {} \;
                set +x
              break
              ;;
        "iss")
            set -x
                cd /var/www/AshlandU/d7.ashlandu/docroot/sites/ashland.edu.iss
                chmod g+ws files
                find . -type d -exec chmod g+ws {} \;
                find . -type f -exec chmod 664 {} \;
                find . -type d -exec chown :www-data {} \;
                find . -type f -exec chown :www-data {} \;
                set +x
              break
              ;;
        "mahg")
            set -x
                cd /var/www/AshlandU/d7.ashlandu/docroot/sites/ashland.edu.mahg
                chmod g+ws files
                find . -type d -exec chmod g+ws {} \;
                find . -type f -exec chmod 664 {} \;
                find . -type d -exec chown :www-data {} \;
                find . -type f -exec chown :www-data {} \;
                set +x
              break
              ;;
        "mba")
            set -x
                cd /var/www/AshlandU/d7.ashlandu/docroot/sites/ashland.edu.mba
                chmod g+ws files
                find . -type d -exec chmod g+ws {} \;
                find . -type f -exec chmod 664 {} \;
                find . -type d -exec chown :www-data {} \;
                find . -type f -exec chown :www-data {} \;
                set +x
              break
              ;;
        "staf")
            set -x
                cd /var/www/AshlandU/d7.ashlandu/docroot/sites/ashland.edu.student-affairs
                chmod g+ws files
                find . -type d -exec chmod g+ws {} \;
                find . -type f -exec chmod 664 {} \;
                find . -type d -exec chown :www-data {} \;
                find . -type f -exec chown :www-data {} \;
                set +x
              break
              ;;
        "train")
            set -x
                cd /var/www/AshlandU/d7.ashlandu/docroot/sites/ashland.edu.training
                chmod g+ws files
                find . -type d -exec chmod g+ws {} \;
                find . -type f -exec chmod 664 {} \;
                find . -type d -exec chown :www-data {} \;
                find . -type f -exec chown :www-data {} \;
                set +x
              break
              ;;
        "blog")
            set -x
                cd /var/www/AshlandU/d7.ashlandu/docroot/sites/blogs.ashland.edu
                chmod g+ws files
                find . -type d -exec chmod g+ws {} \;
                find . -type f -exec chmod 664 {} \;
                find . -type d -exec chown :www-data {} \;
                find . -type f -exec chown :www-data {} \;
                set +x
              break
              ;;
        "default")
            set -x
                cd /var/www/AshlandU/d7.ashlandu/docroot/sites/default
                chmod g+ws files
                find . -type d -exec chmod g+ws {} \;
                find . -type f -exec chmod 664 {} \;
                find . -type d -exec chown :www-data {} \;
                find . -type f -exec chown :www-data {} \;
                set +x
              break
              ;;
        "news")
            set -x
                cd /var/www/AshlandU/d7.ashlandu/docroot/sites/news.ashland.edu
                chmod g+ws files
                find . -type d -exec chmod g+ws {} \;
                find . -type f -exec chmod 664 {} \;
                find . -type d -exec chown :www-data {} \;
                find . -type f -exec chown :www-data {} \;
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
